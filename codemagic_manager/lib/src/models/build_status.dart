// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum BuildStatus {
  @JsonValue('queued')
  queued('queued'),
  @JsonValue('preparing')
  preparing('preparing'),
  @JsonValue('fetching')
  fetching('fetching'),
  @JsonValue('testing')
  testing('testing'),
  @JsonValue('building')
  building('building'),
  @JsonValue('publishing')
  publishing('publishing'),
  @JsonValue('finishing')
  finishing('finishing'),
  @JsonValue('finished')
  finished('finished'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('timeout')
  timeout('timeout'),
  @JsonValue('skipped')
  skipped('skipped'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const BuildStatus(this.json);

  factory BuildStatus.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;

  @override
  String toString() => json ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<BuildStatus> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
