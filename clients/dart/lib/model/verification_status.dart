//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerificationStatus {
  /// Returns a new [VerificationStatus] instance.
  VerificationStatus({
    this.isVerified,
    this.verificationTimestamp,
    this.verificationMethod,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isVerified;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? verificationTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verificationMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerificationStatus &&
     other.isVerified == isVerified &&
     other.verificationTimestamp == verificationTimestamp &&
     other.verificationMethod == verificationMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isVerified == null ? 0 : isVerified!.hashCode) +
    (verificationTimestamp == null ? 0 : verificationTimestamp!.hashCode) +
    (verificationMethod == null ? 0 : verificationMethod!.hashCode);

  @override
  String toString() => 'VerificationStatus[isVerified=$isVerified, verificationTimestamp=$verificationTimestamp, verificationMethod=$verificationMethod]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (isVerified != null) {
      _json[r'isVerified'] = isVerified;
    } else {
      _json[r'isVerified'] = null;
    }
    if (verificationTimestamp != null) {
      _json[r'verificationTimestamp'] = verificationTimestamp!.toUtc().toIso8601String();
    } else {
      _json[r'verificationTimestamp'] = null;
    }
    if (verificationMethod != null) {
      _json[r'verificationMethod'] = verificationMethod;
    } else {
      _json[r'verificationMethod'] = null;
    }
    return _json;
  }

  /// Returns a new [VerificationStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerificationStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerificationStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerificationStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerificationStatus(
        isVerified: mapValueOfType<bool>(json, r'isVerified'),
        verificationTimestamp: mapDateTime(json, r'verificationTimestamp', ''),
        verificationMethod: mapValueOfType<String>(json, r'verificationMethod'),
      );
    }
    return null;
  }

  static List<VerificationStatus>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerificationStatus> mapFromJson(dynamic json) {
    final map = <String, VerificationStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerificationStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerificationStatus-objects as value to a dart map
  static Map<String, List<VerificationStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerificationStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerificationStatus.listFromJson(entry.value, growable: growable,);
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

