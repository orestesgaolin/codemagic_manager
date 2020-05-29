// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'build_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BuildAction _$BuildActionFromJson(Map<String, dynamic> json) {
  return _BuildAction.fromJson(json);
}

class _$BuildActionTearOff {
  const _$BuildActionTearOff();

  _BuildAction call({String name, String type, bool alwaysRun}) {
    return _BuildAction(
      name: name,
      type: type,
      alwaysRun: alwaysRun,
    );
  }
}

// ignore: unused_element
const $BuildAction = _$BuildActionTearOff();

mixin _$BuildAction {
  String get name;
  String get type;
  bool get alwaysRun;

  Map<String, dynamic> toJson();
  $BuildActionCopyWith<BuildAction> get copyWith;
}

abstract class $BuildActionCopyWith<$Res> {
  factory $BuildActionCopyWith(
          BuildAction value, $Res Function(BuildAction) then) =
      _$BuildActionCopyWithImpl<$Res>;
  $Res call({String name, String type, bool alwaysRun});
}

class _$BuildActionCopyWithImpl<$Res> implements $BuildActionCopyWith<$Res> {
  _$BuildActionCopyWithImpl(this._value, this._then);

  final BuildAction _value;
  // ignore: unused_field
  final $Res Function(BuildAction) _then;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
    Object alwaysRun = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      alwaysRun: alwaysRun == freezed ? _value.alwaysRun : alwaysRun as bool,
    ));
  }
}

abstract class _$BuildActionCopyWith<$Res>
    implements $BuildActionCopyWith<$Res> {
  factory _$BuildActionCopyWith(
          _BuildAction value, $Res Function(_BuildAction) then) =
      __$BuildActionCopyWithImpl<$Res>;
  @override
  $Res call({String name, String type, bool alwaysRun});
}

class __$BuildActionCopyWithImpl<$Res> extends _$BuildActionCopyWithImpl<$Res>
    implements _$BuildActionCopyWith<$Res> {
  __$BuildActionCopyWithImpl(
      _BuildAction _value, $Res Function(_BuildAction) _then)
      : super(_value, (v) => _then(v as _BuildAction));

  @override
  _BuildAction get _value => super._value as _BuildAction;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
    Object alwaysRun = freezed,
  }) {
    return _then(_BuildAction(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      alwaysRun: alwaysRun == freezed ? _value.alwaysRun : alwaysRun as bool,
    ));
  }
}

@JsonSerializable()
class _$_BuildAction implements _BuildAction {
  _$_BuildAction({this.name, this.type, this.alwaysRun});

  factory _$_BuildAction.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildActionFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final bool alwaysRun;

  @override
  String toString() {
    return 'BuildAction(name: $name, type: $type, alwaysRun: $alwaysRun)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildAction &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.alwaysRun, alwaysRun) ||
                const DeepCollectionEquality()
                    .equals(other.alwaysRun, alwaysRun)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(alwaysRun);

  @override
  _$BuildActionCopyWith<_BuildAction> get copyWith =>
      __$BuildActionCopyWithImpl<_BuildAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildActionToJson(this);
  }
}

abstract class _BuildAction implements BuildAction {
  factory _BuildAction({String name, String type, bool alwaysRun}) =
      _$_BuildAction;

  factory _BuildAction.fromJson(Map<String, dynamic> json) =
      _$_BuildAction.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  bool get alwaysRun;
  @override
  _$BuildActionCopyWith<_BuildAction> get copyWith;
}
