import 'package:dart_plex_api/dart_plex_api.dart';
import 'package:dio/dio.dart';

class PlexAuthorization {
  final Uri _authEndpoint = Uri.https('plex.tv', '/users/sign_in.json');
  PlexCredentials credentials;
  PlexHeaders headers;

  dynamic _user;

  PlexAuthorization({
    required this.credentials,
    required this.headers,
  }) {
    headers.setCredentials(credentials);
  }

  Future<dynamic> authorize() async {
    var response = await Dio().postUri(
      _authEndpoint,
      options: Options(
        headers: headers.toMap(),
      ),
    );

    dynamic result = response.data;

    var error = result['error'];

    if (error != null) {
      throw getException(error);
    }

    _user = result['user'];

    return _user;
  }

  bool get authorized => _user != null;

  Exception getException(String msg) {
    switch (msg) {
      case 'Invalid email, username, or password.':
        return InvalidCredentialsPlexException(msg);
      case 'You appear to be having trouble signing in to an account. You may wish to try resetting your password at https://plex.tv/reset':
        return InvalidCredentialsPlexException(msg);
      case 'Plex client headers are required':
        return MissingHeadersPlexException(msg);
      default:
        return UnknownPlexException(msg);
    }
  }
}
