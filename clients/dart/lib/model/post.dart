//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Post {
  /// Returns a new [Post] instance.
  Post({
    this.id,
    this.title,
    this.url,
    this.excerpt,
    this.content,
    this.commentStatus,
    this.postType,
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
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? excerpt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  PostCommentStatusEnum? commentStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Post &&
     other.id == id &&
     other.title == title &&
     other.url == url &&
     other.excerpt == excerpt &&
     other.content == content &&
     other.commentStatus == commentStatus &&
     other.postType == postType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (excerpt == null ? 0 : excerpt!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (commentStatus == null ? 0 : commentStatus!.hashCode) +
    (postType == null ? 0 : postType!.hashCode);

  @override
  String toString() => 'Post[id=$id, title=$title, url=$url, excerpt=$excerpt, content=$content, commentStatus=$commentStatus, postType=$postType]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    } else {
      _json[r'id'] = null;
    }
    if (title != null) {
      _json[r'title'] = title;
    } else {
      _json[r'title'] = null;
    }
    if (url != null) {
      _json[r'url'] = url;
    } else {
      _json[r'url'] = null;
    }
    if (excerpt != null) {
      _json[r'excerpt'] = excerpt;
    } else {
      _json[r'excerpt'] = null;
    }
    if (content != null) {
      _json[r'content'] = content;
    } else {
      _json[r'content'] = null;
    }
    if (commentStatus != null) {
      _json[r'commentStatus'] = commentStatus;
    } else {
      _json[r'commentStatus'] = null;
    }
    if (postType != null) {
      _json[r'postType'] = postType;
    } else {
      _json[r'postType'] = null;
    }
    return _json;
  }

  /// Returns a new [Post] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Post? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Post[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Post[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Post(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
        excerpt: mapValueOfType<String>(json, r'excerpt'),
        content: mapValueOfType<String>(json, r'content'),
        commentStatus: PostCommentStatusEnum.fromJson(json[r'commentStatus']),
        postType: mapValueOfType<String>(json, r'postType'),
      );
    }
    return null;
  }

  static List<Post>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Post>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Post.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Post> mapFromJson(dynamic json) {
    final map = <String, Post>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Post.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Post-objects as value to a dart map
  static Map<String, List<Post>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Post>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Post.listFromJson(entry.value, growable: growable,);
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


class PostCommentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PostCommentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const disabled = PostCommentStatusEnum._(r'Disabled');
  static const requireReview = PostCommentStatusEnum._(r'RequireReview');
  static const automateReview = PostCommentStatusEnum._(r'AutomateReview');

  /// List of all possible values in this [enum][PostCommentStatusEnum].
  static const values = <PostCommentStatusEnum>[
    disabled,
    requireReview,
    automateReview,
  ];

  static PostCommentStatusEnum? fromJson(dynamic value) => PostCommentStatusEnumTypeTransformer().decode(value);

  static List<PostCommentStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostCommentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostCommentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PostCommentStatusEnum] to String,
/// and [decode] dynamic data back to [PostCommentStatusEnum].
class PostCommentStatusEnumTypeTransformer {
  factory PostCommentStatusEnumTypeTransformer() => _instance ??= const PostCommentStatusEnumTypeTransformer._();

  const PostCommentStatusEnumTypeTransformer._();

  String encode(PostCommentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostCommentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostCommentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Disabled': return PostCommentStatusEnum.disabled;
        case r'RequireReview': return PostCommentStatusEnum.requireReview;
        case r'AutomateReview': return PostCommentStatusEnum.automateReview;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostCommentStatusEnumTypeTransformer] instance.
  static PostCommentStatusEnumTypeTransformer? _instance;
}


