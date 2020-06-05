import 'package:freezed_annotation/freezed_annotation.dart';

part 'build_action.freezed.dart';
part 'build_action.g.dart';

@freezed
abstract class BuildAction with _$BuildAction {
  factory BuildAction({
    String name,
    String type,
    bool alwaysRun,
  }) = _BuildAction;

  factory BuildAction.fromJson(Map<String, dynamic> json) =>
      _$BuildActionFromJson(json);
}
