import 'package:json_annotation/json_annotation.dart';

import 'code_signing_android.dart';
import 'code_signing_ios.dart';

part 'code_signing.g.dart';

@JsonSerializable()
class CodeSigning {
  CodeSigning({this.android, this.ios});
  final CodeSigningAndroid? android;
  final CodeSigningIos? ios;

  factory CodeSigning.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningFromJson(json);

  Map<String, dynamic> toJson() => _$CodeSigningToJson(this);
}
