import 'package:dart_plex_api/dart_plex_api.dart';

class PlexLibrarySectionRoute extends PlexRoute {
  final String typeString;

  PlexLibrarySectionRoute({
    required PlexConnection connection,
    required String key,
    required this.typeString,
    String? previousPath,
  })  : assert(key != ''),
        super(
          connection: connection,
          path: key,
          previousPath: previousPath,
        );

  /// Returns the appropriate library section (if [typestring] is artist then a [PlexArtistSection] will be returned).
  /// If typeString is invalid or not provided, then a [PlexRawResult] will be returned.
  @override
  Future<PlexObject> request() async {
    PlexObject section;
    late PlexMediaType type;

    try {
      type = PlexMediaType.fromTypeString(type: typeString);
    } finally {
      switch (type.runtimeType) {
        case PlexArtist:
          section = PlexArtistSection.fromJson(
            connection: connection,
            json: (await connection.requestJson(route))['MediaContainer'],
          );
          break;
        default:
          section = PlexRawObject.fromJson(
            connection: connection,
            json: (await connection.requestJson(route))['MediaContainer'],
          );
      }
    }

    return section;
  }
}
