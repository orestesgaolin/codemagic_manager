import 'package:freezed_annotation/freezed_annotation.dart';

import 'code_signing_android.dart';
import 'code_signing_ios.dart';

part 'code_signing.freezed.dart';
part 'code_signing.g.dart';

@freezed
abstract class CodeSigning with _$CodeSigning {
  factory CodeSigning({
    CodeSigningAndroid android,
    CodeSigningIos ios,
  }) = _CodeSigning;

  factory CodeSigning.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningFromJson(json);
}
