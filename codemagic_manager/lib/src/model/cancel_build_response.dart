import 'package:freezed_annotation/freezed_annotation.dart';

import 'build.dart';

part 'cancel_build_response.freezed.dart';
part 'cancel_build_response.g.dart';

@freezed
abstract class CancelBuildResponse with _$CancelBuildResponse {
  factory CancelBuildResponse({
    Build build,
  }) = _CancelBuildResponse;

  factory CancelBuildResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelBuildResponseFromJson(json);
}
