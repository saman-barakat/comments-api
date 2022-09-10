//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Blog {
  /// Returns a new [Blog] instance.
  Blog({
    this.id,
    this.name,
    this.url,
    this.authToken,
    this.commentStatus,
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
  String? name;

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
  String? authToken;

  BlogCommentStatusEnum? commentStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Blog &&
     other.id == id &&
     other.name == name &&
     other.url == url &&
     other.authToken == authToken &&
     other.commentStatus == commentStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (authToken == null ? 0 : authToken!.hashCode) +
    (commentStatus == null ? 0 : commentStatus!.hashCode);

  @override
  String toString() => 'Blog[id=$id, name=$name, url=$url, authToken=$authToken, commentStatus=$commentStatus]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    } else {
      _json[r'id'] = null;
    }
    if (name != null) {
      _json[r'name'] = name;
    } else {
      _json[r'name'] = null;
    }
    if (url != null) {
      _json[r'url'] = url;
    } else {
      _json[r'url'] = null;
    }
    if (authToken != null) {
      _json[r'authToken'] = authToken;
    } else {
      _json[r'authToken'] = null;
    }
    if (commentStatus != null) {
      _json[r'commentStatus'] = commentStatus;
    } else {
      _json[r'commentStatus'] = null;
    }
    return _json;
  }

  /// Returns a new [Blog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Blog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Blog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Blog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Blog(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
        authToken: mapValueOfType<String>(json, r'authToken'),
        commentStatus: BlogCommentStatusEnum.fromJson(json[r'commentStatus']),
      );
    }
    return null;
  }

  static List<Blog>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Blog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Blog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Blog> mapFromJson(dynamic json) {
    final map = <String, Blog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Blog-objects as value to a dart map
  static Map<String, List<Blog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Blog>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blog.listFromJson(entry.value, growable: growable,);
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


class BlogCommentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BlogCommentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const disabled = BlogCommentStatusEnum._(r'Disabled');
  static const requireReview = BlogCommentStatusEnum._(r'RequireReview');
  static const automateReview = BlogCommentStatusEnum._(r'AutomateReview');

  /// List of all possible values in this [enum][BlogCommentStatusEnum].
  static const values = <BlogCommentStatusEnum>[
    disabled,
    requireReview,
    automateReview,
  ];

  static BlogCommentStatusEnum? fromJson(dynamic value) => BlogCommentStatusEnumTypeTransformer().decode(value);

  static List<BlogCommentStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlogCommentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlogCommentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BlogCommentStatusEnum] to String,
/// and [decode] dynamic data back to [BlogCommentStatusEnum].
class BlogCommentStatusEnumTypeTransformer {
  factory BlogCommentStatusEnumTypeTransformer() => _instance ??= const BlogCommentStatusEnumTypeTransformer._();

  const BlogCommentStatusEnumTypeTransformer._();

  String encode(BlogCommentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BlogCommentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BlogCommentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Disabled': return BlogCommentStatusEnum.disabled;
        case r'RequireReview': return BlogCommentStatusEnum.requireReview;
        case r'AutomateReview': return BlogCommentStatusEnum.automateReview;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BlogCommentStatusEnumTypeTransformer] instance.
  static BlogCommentStatusEnumTypeTransformer? _instance;
}


