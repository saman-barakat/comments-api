//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Comment {
  /// Returns a new [Comment] instance.
  Comment({
    this.id,
    this.userId,
    this.postId,
    this.blogId,
    this.parentId,
    this.authorDisplayName,
    this.createdTimestamp,
    this.modifiedTimestamp,
    this.content,
    this.status,
    this.downvoteCount,
    this.upvoteCount,
    this.media,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blogId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorDisplayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? modifiedTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  CommentStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? downvoteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? upvoteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Media? media;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Comment &&
     other.id == id &&
     other.userId == userId &&
     other.postId == postId &&
     other.blogId == blogId &&
     other.parentId == parentId &&
     other.authorDisplayName == authorDisplayName &&
     other.createdTimestamp == createdTimestamp &&
     other.modifiedTimestamp == modifiedTimestamp &&
     other.content == content &&
     other.status == status &&
     other.downvoteCount == downvoteCount &&
     other.upvoteCount == upvoteCount &&
     other.media == media;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (postId == null ? 0 : postId!.hashCode) +
    (blogId == null ? 0 : blogId!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (authorDisplayName == null ? 0 : authorDisplayName!.hashCode) +
    (createdTimestamp == null ? 0 : createdTimestamp!.hashCode) +
    (modifiedTimestamp == null ? 0 : modifiedTimestamp!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (downvoteCount == null ? 0 : downvoteCount!.hashCode) +
    (upvoteCount == null ? 0 : upvoteCount!.hashCode) +
    (media == null ? 0 : media!.hashCode);

  @override
  String toString() => 'Comment[id=$id, userId=$userId, postId=$postId, blogId=$blogId, parentId=$parentId, authorDisplayName=$authorDisplayName, createdTimestamp=$createdTimestamp, modifiedTimestamp=$modifiedTimestamp, content=$content, status=$status, downvoteCount=$downvoteCount, upvoteCount=$upvoteCount, media=$media]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    } else {
      _json[r'id'] = null;
    }
    if (userId != null) {
      _json[r'userId'] = userId;
    } else {
      _json[r'userId'] = null;
    }
    if (postId != null) {
      _json[r'postId'] = postId;
    } else {
      _json[r'postId'] = null;
    }
    if (blogId != null) {
      _json[r'blogId'] = blogId;
    } else {
      _json[r'blogId'] = null;
    }
    if (parentId != null) {
      _json[r'parentId'] = parentId;
    } else {
      _json[r'parentId'] = null;
    }
    if (authorDisplayName != null) {
      _json[r'authorDisplayName'] = authorDisplayName;
    } else {
      _json[r'authorDisplayName'] = null;
    }
    if (createdTimestamp != null) {
      _json[r'created_timestamp'] = createdTimestamp!.toUtc().toIso8601String();
    } else {
      _json[r'created_timestamp'] = null;
    }
    if (modifiedTimestamp != null) {
      _json[r'modified_timestamp'] = modifiedTimestamp!.toUtc().toIso8601String();
    } else {
      _json[r'modified_timestamp'] = null;
    }
    if (content != null) {
      _json[r'content'] = content;
    } else {
      _json[r'content'] = null;
    }
    if (status != null) {
      _json[r'status'] = status;
    } else {
      _json[r'status'] = null;
    }
    if (downvoteCount != null) {
      _json[r'downvoteCount'] = downvoteCount;
    } else {
      _json[r'downvoteCount'] = null;
    }
    if (upvoteCount != null) {
      _json[r'upvoteCount'] = upvoteCount;
    } else {
      _json[r'upvoteCount'] = null;
    }
    if (media != null) {
      _json[r'media'] = media;
    } else {
      _json[r'media'] = null;
    }
    return _json;
  }

  /// Returns a new [Comment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Comment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Comment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Comment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Comment(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'userId'),
        postId: mapValueOfType<String>(json, r'postId'),
        blogId: mapValueOfType<String>(json, r'blogId'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        authorDisplayName: mapValueOfType<String>(json, r'authorDisplayName'),
        createdTimestamp: mapDateTime(json, r'created_timestamp', ''),
        modifiedTimestamp: mapDateTime(json, r'modified_timestamp', ''),
        content: mapValueOfType<String>(json, r'content'),
        status: CommentStatusEnum.fromJson(json[r'status']),
        downvoteCount: mapValueOfType<int>(json, r'downvoteCount'),
        upvoteCount: mapValueOfType<int>(json, r'upvoteCount'),
        media: Media.fromJson(json[r'media']),
      );
    }
    return null;
  }

  static List<Comment>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Comment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Comment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Comment> mapFromJson(dynamic json) {
    final map = <String, Comment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Comment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Comment-objects as value to a dart map
  static Map<String, List<Comment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Comment>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Comment.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class CommentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CommentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const draft = CommentStatusEnum._(r'Draft');
  static const inReview = CommentStatusEnum._(r'InReview');
  static const flagged = CommentStatusEnum._(r'Flagged');
  static const published = CommentStatusEnum._(r'Published');

  /// List of all possible values in this [enum][CommentStatusEnum].
  static const values = <CommentStatusEnum>[
    draft,
    inReview,
    flagged,
    published,
  ];

  static CommentStatusEnum? fromJson(dynamic value) => CommentStatusEnumTypeTransformer().decode(value);

  static List<CommentStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CommentStatusEnum] to String,
/// and [decode] dynamic data back to [CommentStatusEnum].
class CommentStatusEnumTypeTransformer {
  factory CommentStatusEnumTypeTransformer() => _instance ??= const CommentStatusEnumTypeTransformer._();

  const CommentStatusEnumTypeTransformer._();

  String encode(CommentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CommentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CommentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Draft': return CommentStatusEnum.draft;
        case r'InReview': return CommentStatusEnum.inReview;
        case r'Flagged': return CommentStatusEnum.flagged;
        case r'Published': return CommentStatusEnum.published;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CommentStatusEnumTypeTransformer] instance.
  static CommentStatusEnumTypeTransformer? _instance;
}


