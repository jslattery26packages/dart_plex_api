import 'package:dart_plex_api/dart_plex_api.dart';

class PlexLibrarySection extends PlexObject {
  static final route = '/library/sections';

  final bool? allowSync;
  final String? art;
  final String? composite;
  final bool? filters;
  final bool? refreshing;
  final String? thumb;
  final String key;
  final String type;
  final String? title;
  final String? agent;
  final String? scanner;
  final String? language;
  final String? uuid;
  final int? updatedAt;
  final int? createdAt;
  final int? scannedAt;
  final List<PlexLocation>? location;

  PlexLibrarySection({
    required PlexConnection connection,
    this.allowSync,
    this.art,
    this.composite,
    this.filters,
    this.refreshing,
    this.thumb,
    required this.key,
    required this.type,
    this.title,
    this.agent,
    this.scanner,
    this.language,
    this.uuid,
    this.updatedAt,
    this.createdAt,
    this.scannedAt,
    this.location,
  }) : super(
          connection: connection,
        );

  @override
  PlexLibrarySection.fromJson({
    required PlexConnection connection,
    required dynamic json,
  })  : assert(json != null),
        allowSync = json['allowSync'],
        art = json['art'],
        composite = json['composite'],
        filters = json['filters'],
        refreshing = json['refreshing'],
        thumb = json['thumb'],
        key = json['key'],
        type = json['type'],
        title = json['title'],
        agent = json['agent'],
        scanner = json['scanner'],
        language = json['language'],
        uuid = json['uuid'],
        updatedAt = json['updatedAt'],
        createdAt = json['createdAt'],
        scannedAt = json['scannedAt'],
        location = json['Location'] != null
            ? List.generate(
                (json['Location'] as List<dynamic>).length,
                (int index) => PlexLocation.fromJson(
                  connection: connection,
                  json: json['Location'][index],
                ),
              )
            : null,
        super(
          connection: connection,
        );

  @override
  Map<String, dynamic> toJson() => {
        'allowSync': allowSync,
        'art': art,
        'composite': composite,
        'filters': filters,
        'refreshing': refreshing,
        'thumb': thumb,
        'key': key,
        'type': type,
        'title': title,
        'agent': agent,
        'scanner': scanner,
        'language': language,
        'uuid': uuid,
        'updatedAt': updatedAt,
        'createdAt': createdAt,
        'scannedAt': scannedAt,
        'location': location,
      };
}
