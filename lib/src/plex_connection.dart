import 'package:dart_plex_api/dart_plex_api.dart';
import 'package:dio/dio.dart';

class PlexConnection {
  late PlexAuthorization _auth;

  String host;
  int port;
  PlexCredentials credentials;
  PlexHeaders? headers;

  PlexConnection({
    required this.host,
    required this.port,
    required this.credentials,
    this.headers,
  }) {
    if (headers == null) {
      headers = PlexHeaders.fromCredentials(
        clientIdentifier: '',
        credentials: credentials,
      );
    } else {
      headers!.setCredentials(credentials);
    }

    _auth = PlexAuthorization(
      credentials: credentials,
      headers: headers!,
    );
  }

  Future<PlexConnection> authorize() async {
    dynamic user = await _auth.authorize();

    headers!.token = user['authToken'] ?? user['authentication_token'];

    return this;
  }

  bool get authorized => _auth.authorized;

  Uri get requestUri => Uri(
        scheme: 'http',
        host: host,
        port: port,
      );

  Future<dynamic> requestJson(String route) async {
    final response = await Dio().getUri(
      requestUri.replace(
        path: route,
        queryParameters: {'X-Plex-Token': headers!.token},
      ),
      options: Options(
        headers: {'Accept': 'application/json'},
      ),
    );
    return response.data;
  }

  Future<Response> requestRaw(String route) async => await Dio().getUri(
        requestUri.replace(path: route),
        options: Options(
          headers: headers!.toMap(),
        ),
      );

  PlexRootRoute get root => PlexRootRoute(
        connection: this,
      );
}
