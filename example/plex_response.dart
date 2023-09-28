// To parse this JSON data, do
//
//     final plexReponse = plexReponseFromJson(jsonString);

import 'dart:convert';

PlexReponse plexReponseFromJson(String str) =>
    PlexReponse.fromJson(json.decode(str));

String plexReponseToJson(PlexReponse data) => json.encode(data.toJson());

class PlexReponse {
  final MediaContainer? mediaContainer;

  PlexReponse({
    this.mediaContainer,
  });

  factory PlexReponse.fromJson(Map<String, dynamic> json) => PlexReponse(
        mediaContainer: json['MediaContainer'] == null
            ? null
            : MediaContainer.fromJson(json['MediaContainer']),
      );

  Map<String, dynamic> toJson() => {
        'MediaContainer': mediaContainer?.toJson(),
      };
}

class MediaContainer {
  final int? size;
  final bool? allowSync;
  final String art;
  final String? identifier;
  final int? librarySectionId;
  final String? librarySectionTitle;
  final String? librarySectionUuid;
  final String? mediaTagPrefix;
  final int? mediaTagVersion;
  final String? thumb;
  final String? title1;
  final String? title2;
  final ViewGroup? viewGroup;
  final int? viewMode;
  final List<Metadatum>? metadata;

  MediaContainer({
    this.size,
    this.allowSync,
    required this.art,
    this.identifier,
    this.librarySectionId,
    this.librarySectionTitle,
    this.librarySectionUuid,
    this.mediaTagPrefix,
    this.mediaTagVersion,
    this.thumb,
    this.title1,
    this.title2,
    this.viewGroup,
    this.viewMode,
    this.metadata,
  });

  factory MediaContainer.fromJson(Map<String, dynamic> json) => MediaContainer(
        size: json['size'],
        allowSync: json['allowSync'],
        art: json['art'],
        identifier: json['identifier'],
        librarySectionId: json['librarySectionID'],
        librarySectionTitle: json['librarySectionTitle'],
        librarySectionUuid: json['librarySectionUUID'],
        mediaTagPrefix: json['mediaTagPrefix'],
        mediaTagVersion: json['mediaTagVersion'],
        thumb: json['thumb'],
        title1: json['title1'],
        title2: json['title2'],
        viewGroup: viewGroupValues.map[json['viewGroup']]!,
        viewMode: json['viewMode'],
        metadata: json['Metadata'] == null
            ? []
            : List<Metadatum>.from(
                json['Metadata']!.map((x) => Metadatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'size': size,
        'allowSync': allowSync,
        'art': art,
        'identifier': identifier,
        'librarySectionID': librarySectionId,
        'librarySectionTitle': librarySectionTitle,
        'librarySectionUUID': librarySectionUuid,
        'mediaTagPrefix': mediaTagPrefix,
        'mediaTagVersion': mediaTagVersion,
        'thumb': thumb,
        'title1': title1,
        'title2': title2,
        'viewGroup': viewGroupValues.reverse[viewGroup],
        'viewMode': viewMode,
        'Metadata': metadata == null
            ? []
            : List<dynamic>.from(metadata!.map((x) => x.toJson())),
      };
}

class Metadatum {
  final String? ratingKey;
  final String? key;
  final String? guid;
  final String? studio;
  final ViewGroup? type;
  final String? title;
  final ContentRating? contentRating;
  final String? summary;
  final double? rating;
  final double? audienceRating;
  final int? year;
  final String? tagline;
  final String? thumb;
  final String? art;
  final int? duration;
  final DateTime? originallyAvailableAt;
  final int? addedAt;
  final int? updatedAt;
  final AudienceRatingImage? audienceRatingImage;
  final String? primaryExtraKey;
  final RatingImage? ratingImage;
  final List<Media>? media;
  final List<Collection>? genre;
  final List<Collection>? country;
  final List<Collection>? director;
  final List<Collection>? writer;
  final List<Collection>? role;
  final String? originalTitle;
  final int? viewOffset;
  final int? skipCount;
  final int? lastViewedAt;
  final String? titleSort;
  final int? viewCount;
  final ChapterSource? chapterSource;
  final List<Collection>? collection;
  final String? languageOverride;
  final String? createdAtAccuracy;
  final String? createdAtTzOffset;
  final double? userRating;
  final int? lastRatedAt;

  @override
  String toString() {
    return 'Metadatum(ratingKey: $ratingKey, key: $key, guid: $guid, studio: $studio, type: $type, title: $title, contentRating: $contentRating, summary: $summary, rating: $rating, audienceRating: $audienceRating, year: $year, tagline: $tagline, thumb: $thumb, art: $art, duration: $duration, originallyAvailableAt: $originallyAvailableAt, addedAt: $addedAt, updatedAt: $updatedAt, audienceRatingImage: $audienceRatingImage, primaryExtraKey: $primaryExtraKey, ratingImage: $ratingImage, media: $media, genre: $genre, country: $country, director: $director, writer: $writer, role: $role, originalTitle: $originalTitle, viewOffset: $viewOffset, skipCount: $skipCount, lastViewedAt: $lastViewedAt, titleSort: $titleSort, viewCount: $viewCount, chapterSource: $chapterSource, collection: $collection, languageOverride: $languageOverride, createdAtAccuracy: $createdAtAccuracy, createdAtTzOffset: $createdAtTzOffset, userRating: $userRating, lastRatedAt: $lastRatedAt)';
  }

  Metadatum({
    this.ratingKey,
    this.key,
    this.guid,
    this.studio,
    this.type,
    this.title,
    this.contentRating,
    this.summary,
    this.rating,
    this.audienceRating,
    this.year,
    this.tagline,
    this.thumb,
    this.art,
    this.duration,
    this.originallyAvailableAt,
    this.addedAt,
    this.updatedAt,
    this.audienceRatingImage,
    this.primaryExtraKey,
    this.ratingImage,
    this.media,
    this.genre,
    this.country,
    this.director,
    this.writer,
    this.role,
    this.originalTitle,
    this.viewOffset,
    this.skipCount,
    this.lastViewedAt,
    this.titleSort,
    this.viewCount,
    this.chapterSource,
    this.collection,
    this.languageOverride,
    this.createdAtAccuracy,
    this.createdAtTzOffset,
    this.userRating,
    this.lastRatedAt,
  });

  factory Metadatum.fromJson(Map<String, dynamic> json) => Metadatum(
        ratingKey: json['ratingKey'],
        key: json['key'],
        guid: json['guid'],
        studio: json['studio'],
        type: viewGroupValues.map[json['type']]!,
        title: json['title'],
        contentRating: contentRatingValues.map[json['contentRating']],
        summary: json['summary'],
        rating: json['rating']?.toDouble(),
        audienceRating: json['audienceRating']?.toDouble(),
        year: json['year'],
        tagline: json['tagline'],
        thumb: json['thumb'],
        art: json['art'],
        duration: json['duration'],
        originallyAvailableAt: json['originallyAvailableAt'] == null
            ? null
            : DateTime.parse(json['originallyAvailableAt']),
        addedAt: json['addedAt'],
        updatedAt: json['updatedAt'],
        audienceRatingImage:
            audienceRatingImageValues.map[json['audienceRatingImage']],
        primaryExtraKey: json['primaryExtraKey'],
        ratingImage: ratingImageValues.map[json['ratingImage']],
        media: json['Media'] == null
            ? []
            : List<Media>.from(json['Media']!.map((x) => Media.fromJson(x))),
        genre: json['Genre'] == null
            ? []
            : List<Collection>.from(
                json['Genre']!.map((x) => Collection.fromJson(x))),
        country: json['Country'] == null
            ? []
            : List<Collection>.from(
                json['Country']!.map((x) => Collection.fromJson(x))),
        director: json['Director'] == null
            ? []
            : List<Collection>.from(
                json['Director']!.map((x) => Collection.fromJson(x))),
        writer: json['Writer'] == null
            ? []
            : List<Collection>.from(
                json['Writer']!.map((x) => Collection.fromJson(x))),
        role: json['Role'] == null
            ? []
            : List<Collection>.from(
                json['Role']!.map((x) => Collection.fromJson(x))),
        originalTitle: json['originalTitle'],
        viewOffset: json['viewOffset'],
        skipCount: json['skipCount'],
        lastViewedAt: json['lastViewedAt'],
        titleSort: json['titleSort'],
        viewCount: json['viewCount'],
        chapterSource: chapterSourceValues.map[json['chapterSource']],
        collection: json['Collection'] == null
            ? []
            : List<Collection>.from(
                json['Collection']!.map((x) => Collection.fromJson(x))),
        languageOverride: json['languageOverride'],
        createdAtAccuracy: json['createdAtAccuracy'],
        createdAtTzOffset: json['createdAtTZOffset'],
        userRating: json['userRating'],
        lastRatedAt: json['lastRatedAt'],
      );

  Map<String, dynamic> toJson() => {
        'ratingKey': ratingKey,
        'key': key,
        'guid': guid,
        'studio': studio,
        'type': viewGroupValues.reverse[type],
        'title': title,
        'contentRating': contentRatingValues.reverse[contentRating],
        'summary': summary,
        'rating': rating,
        'audienceRating': audienceRating,
        'year': year,
        'tagline': tagline,
        'thumb': thumb,
        'art': art,
        'duration': duration,
        'originallyAvailableAt':
            "${originallyAvailableAt!.year.toString().padLeft(4, '0')}-${originallyAvailableAt!.month.toString().padLeft(2, '0')}-${originallyAvailableAt!.day.toString().padLeft(2, '0')}",
        'addedAt': addedAt,
        'updatedAt': updatedAt,
        'audienceRatingImage':
            audienceRatingImageValues.reverse[audienceRatingImage],
        'primaryExtraKey': primaryExtraKey,
        'ratingImage': ratingImageValues.reverse[ratingImage],
        'Media': media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
        'Genre': genre == null
            ? []
            : List<dynamic>.from(genre!.map((x) => x.toJson())),
        'Country': country == null
            ? []
            : List<dynamic>.from(country!.map((x) => x.toJson())),
        'Director': director == null
            ? []
            : List<dynamic>.from(director!.map((x) => x.toJson())),
        'Writer': writer == null
            ? []
            : List<dynamic>.from(writer!.map((x) => x.toJson())),
        'Role': role == null
            ? []
            : List<dynamic>.from(role!.map((x) => x.toJson())),
        'originalTitle': originalTitle,
        'viewOffset': viewOffset,
        'skipCount': skipCount,
        'lastViewedAt': lastViewedAt,
        'titleSort': titleSort,
        'viewCount': viewCount,
        'chapterSource': chapterSourceValues.reverse[chapterSource],
        'Collection': collection == null
            ? []
            : List<dynamic>.from(collection!.map((x) => x.toJson())),
        'languageOverride': languageOverride,
        'createdAtAccuracy': createdAtAccuracy,
        'createdAtTZOffset': createdAtTzOffset,
        'userRating': userRating,
        'lastRatedAt': lastRatedAt,
      };
}

enum AudienceRatingImage {
  IMDB_IMAGE_RATING,
  ROTTENTOMATOES_IMAGE_RATING_SPILLED,
  ROTTENTOMATOES_IMAGE_RATING_UPRIGHT
}

final audienceRatingImageValues = EnumValues({
  'imdb://image.rating': AudienceRatingImage.IMDB_IMAGE_RATING,
  'rottentomatoes://image.rating.spilled':
      AudienceRatingImage.ROTTENTOMATOES_IMAGE_RATING_SPILLED,
  'rottentomatoes://image.rating.upright':
      AudienceRatingImage.ROTTENTOMATOES_IMAGE_RATING_UPRIGHT
});

enum ChapterSource { MEDIA }

final chapterSourceValues = EnumValues({'media': ChapterSource.MEDIA});

class Collection {
  final String? tag;

  Collection({
    this.tag,
  });

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        tag: json['tag'],
      );

  Map<String, dynamic> toJson() => {
        'tag': tag,
      };
}

enum ContentRating {
  APPROVED,
  G,
  NC_17,
  NOT_RATED,
  NR,
  PASSED,
  PG,
  PG_13,
  R,
  TV_14,
  TV_G,
  TV_MA,
  TV_PG,
  TV_Y
}

final contentRatingValues = EnumValues({
  'Approved': ContentRating.APPROVED,
  'G': ContentRating.G,
  'NC-17': ContentRating.NC_17,
  'Not Rated': ContentRating.NOT_RATED,
  'NR': ContentRating.NR,
  'Passed': ContentRating.PASSED,
  'PG': ContentRating.PG,
  'PG-13': ContentRating.PG_13,
  'R': ContentRating.R,
  'TV-14': ContentRating.TV_14,
  'TV-G': ContentRating.TV_G,
  'TV-MA': ContentRating.TV_MA,
  'TV-PG': ContentRating.TV_PG,
  'TV-Y': ContentRating.TV_Y
});

class Media {
  final int? id;
  final int? duration;
  final int? bitrate;
  final int? width;
  final int? height;
  final double? aspectRatio;
  final int? audioChannels;
  final AudioCodec? audioCodec;
  final VideoCodec? videoCodec;
  final String? videoResolution;
  final Container? container;
  final VideoFrameRate? videoFrameRate;
  final int? optimizedForStreaming;
  final AudioProfile? audioProfile;
  final bool? has64BitOffsets;
  final VideoProfile? videoProfile;
  final List<Part>? mediaPart;

  Media({
    this.id,
    this.duration,
    this.bitrate,
    this.width,
    this.height,
    this.aspectRatio,
    this.audioChannels,
    this.audioCodec,
    this.videoCodec,
    this.videoResolution,
    this.container,
    this.videoFrameRate,
    this.optimizedForStreaming,
    this.audioProfile,
    this.has64BitOffsets,
    this.videoProfile,
    this.mediaPart,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json['id'],
        duration: json['duration'],
        bitrate: json['bitrate'],
        width: json['width'],
        height: json['height'],
        aspectRatio: json['aspectRatio']?.toDouble(),
        audioChannels: json['audioChannels'],
        audioCodec: audioCodecValues.map[json['audioCodec']],
        videoCodec: videoCodecValues.map[json['videoCodec']],
        videoResolution: json['videoResolution'],
        container: containerValues.map[json['container']],
        videoFrameRate: videoFrameRateValues.map[json['videoFrameRate']],
        optimizedForStreaming: json['optimizedForStreaming'],
        audioProfile: audioProfileValues.map[json['audioProfile']],
        has64BitOffsets: json['has64bitOffsets'],
        videoProfile: videoProfileValues.map[json['videoProfile']],
        mediaPart: json['Part'] == null
            ? []
            : List<Part>.from(json['Part'].map((x) => Part.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'duration': duration,
        'bitrate': bitrate,
        'width': width,
        'height': height,
        'aspectRatio': aspectRatio,
        'audioChannels': audioChannels,
        'audioCodec': audioCodecValues.reverse[audioCodec],
        'videoCodec': videoCodecValues.reverse[videoCodec],
        'videoResolution': videoResolution,
        'container': containerValues.reverse[container],
        'videoFrameRate': videoFrameRateValues.reverse[videoFrameRate],
        'optimizedForStreaming': optimizedForStreaming,
        'audioProfile': audioProfileValues.reverse[audioProfile],
        'has64bitOffsets': has64BitOffsets,
        'videoProfile': videoProfileValues.reverse[videoProfile],
        'Part': mediaPart == null
            ? []
            : List<dynamic>.from(mediaPart!.map((x) => x.toJson())),
      };
}

enum AudioCodec { AAC, AC3, DCA, DCA_MA, EAC3, FLAC, MP3, OPUS }

final audioCodecValues = EnumValues({
  'aac': AudioCodec.AAC,
  'ac3': AudioCodec.AC3,
  'dca': AudioCodec.DCA,
  'dca-ma': AudioCodec.DCA_MA,
  'eac3': AudioCodec.EAC3,
  'flac': AudioCodec.FLAC,
  'mp3': AudioCodec.MP3,
  'opus': AudioCodec.OPUS
});

enum AudioProfile { DTS, HE_AAC, LC, MA }

final audioProfileValues = EnumValues({
  'dts': AudioProfile.DTS,
  'he-aac': AudioProfile.HE_AAC,
  'lc': AudioProfile.LC,
  'ma': AudioProfile.MA
});

enum Container { AVI, MKV, MP4 }

final containerValues = EnumValues(
    {'avi': Container.AVI, 'mkv': Container.MKV, 'mp4': Container.MP4});

class Part {
  final int? id;
  final String? key;
  final int? duration;
  final String? file;
  final int? size;
  final AudioProfile? audioProfile;
  final Container? container;
  final bool? has64BitOffsets;
  final bool? optimizedForStreaming;
  final VideoProfile? videoProfile;
  final String? hasThumbnail;

  Part({
    this.id,
    this.key,
    this.duration,
    this.file,
    this.size,
    this.audioProfile,
    this.container,
    this.has64BitOffsets,
    this.optimizedForStreaming,
    this.videoProfile,
    this.hasThumbnail,
  });

  factory Part.fromJson(Map<String, dynamic> json) => Part(
        id: json['id'],
        key: json['key'],
        duration: json['duration'],
        file: json['file'],
        size: json['size'],
        audioProfile: audioProfileValues.map[json['audioProfile']],
        container: containerValues.map[json['container']]!,
        has64BitOffsets: json['has64bitOffsets'],
        optimizedForStreaming: json['optimizedForStreaming'],
        videoProfile: videoProfileValues.map[json['videoProfile']],
        hasThumbnail: json['hasThumbnail'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'duration': duration,
        'file': file,
        'size': size,
        'audioProfile': audioProfileValues.reverse[audioProfile],
        'container': containerValues.reverse[container],
        'has64bitOffsets': has64BitOffsets,
        'optimizedForStreaming': optimizedForStreaming,
        'videoProfile': videoProfileValues.reverse[videoProfile],
        'hasThumbnail': hasThumbnail,
      };
}

enum VideoProfile {
  ADVANCED_SIMPLE,
  CONSTRAINED_BASELINE,
  HIGH,
  HIGH_10,
  MAIN,
  MAIN_10,
  SIMPLE
}

final videoProfileValues = EnumValues({
  'advanced simple': VideoProfile.ADVANCED_SIMPLE,
  'constrained baseline': VideoProfile.CONSTRAINED_BASELINE,
  'high': VideoProfile.HIGH,
  'high 10': VideoProfile.HIGH_10,
  'main': VideoProfile.MAIN,
  'main 10': VideoProfile.MAIN_10,
  'simple': VideoProfile.SIMPLE
});

enum VideoCodec { AV1, H264, HEVC, MPEG4, MSMPEG4_V3 }

final videoCodecValues = EnumValues({
  'av1': VideoCodec.AV1,
  'h264': VideoCodec.H264,
  'hevc': VideoCodec.HEVC,
  'mpeg4': VideoCodec.MPEG4,
  'msmpeg4v3': VideoCodec.MSMPEG4_V3
});

enum VideoFrameRate { NTSC, PAL, THE_24_P, THE_60_P }

final videoFrameRateValues = EnumValues({
  'NTSC': VideoFrameRate.NTSC,
  'PAL': VideoFrameRate.PAL,
  '24p': VideoFrameRate.THE_24_P,
  '60p': VideoFrameRate.THE_60_P
});

enum RatingImage {
  ROTTENTOMATOES_IMAGE_RATING_RIPE,
  ROTTENTOMATOES_IMAGE_RATING_ROTTEN
}

final ratingImageValues = EnumValues({
  'rottentomatoes://image.rating.ripe':
      RatingImage.ROTTENTOMATOES_IMAGE_RATING_RIPE,
  'rottentomatoes://image.rating.rotten':
      RatingImage.ROTTENTOMATOES_IMAGE_RATING_ROTTEN
});

enum ViewGroup { MOVIE }

final viewGroupValues = EnumValues({'movie': ViewGroup.MOVIE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
