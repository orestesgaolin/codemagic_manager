import 'package:freezed_annotation/freezed_annotation.dart';

import 'application.dart';
import 'build.dart';

part 'build_response.freezed.dart';
part 'build_response.g.dart';

@freezed
abstract class BuildResponse with _$BuildResponse {
  factory BuildResponse({
    Application application,
    Build build,
  }) = _BuildResponse;

  factory BuildResponse.fromJson(Map<String, dynamic> json) =>
      _$BuildResponseFromJson(json);
}
