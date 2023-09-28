import 'package:dart_plex_api/dart_plex_api.dart';

main() async {
  var credentials = PlexCredentials(
    username: '<USERNAME>',
    password: '<PASSWORD>',
  );

  var headers = PlexHeaders(
    clientIdentifier: 'Plex Dart Client',
  );

  var connection = await PlexConnection(
    host: '127.0.0.1',
    port: 32400,
    credentials: credentials,
    headers: headers,
  ).authorize();

  // Returns an http [Response] object
  await connection.requestRaw('/');
}
