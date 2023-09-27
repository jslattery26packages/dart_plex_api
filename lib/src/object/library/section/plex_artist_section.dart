import 'package:dart_plex_api/dart_plex_api.dart';

class PlexArtistSection extends PlexObject {
  final bool? allowSync;
  final String? art;
  final String? content;
  final String? identifier;
  final int? librarySectionID;
  final String? mediaTagPrefix;
  final int? mediaTagVersion;
  final bool? nocache;
  final String? thumb;
  final String? title1;
  final String? viewGroup;
  final int? viewMode;
  final List<PlexDirectory>? directory;

  PlexArtistSection({
    required PlexConnection connection,
    this.allowSync,
    this.art,
    this.content,
    this.identifier,
    this.librarySectionID,
    this.mediaTagPrefix,
    this.mediaTagVersion,
    this.nocache,
    this.thumb,
    this.title1,
    this.viewGroup,
    this.viewMode,
    this.directory,
  }) : super(
          connection: connection,
        );

  PlexArtistSection.fromJson({
    required PlexConnection connection,
    required dynamic json,
  })  : assert(json != null),
        allowSync = json['allowSync'],
        art = json['art'],
        content = json['content'],
        identifier = json['identifier'],
        librarySectionID = json['librarySectionID'],
        mediaTagPrefix = json['mediaTagPrefix'],
        mediaTagVersion = json['mediaTagVersion'],
        nocache = json['nocache'],
        thumb = json['thumb'],
        title1 = json['title1'],
        viewGroup = json['viewGroup'],
        viewMode = json['viewMode'],
        directory = json['Directory'] != null
            ? List.generate(
                (json['Directory'] as List<dynamic>).length,
                (int index) => PlexDirectory.fromJson(
                  connection: connection,
                  json: json['Directory'][index],
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
        'content': content,
        'identifier': identifier,
        'librarySectionID': librarySectionID,
        'mediaTagPrefix': mediaTagPrefix,
        'mediaTagVersion': mediaTagVersion,
        'nocache': nocache,
        'thumb': thumb,
        'title1': title1,
        'viewGroup': viewGroup,
        'viewMode': viewMode,
        'directory': directory,
      };
}
