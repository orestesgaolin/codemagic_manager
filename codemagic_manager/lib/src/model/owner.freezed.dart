// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

class _$OwnerTearOff {
  const _$OwnerTearOff();

  _Owner call({String name}) {
    return _Owner(
      name: name,
    );
  }
}

// ignore: unused_element
const $Owner = _$OwnerTearOff();

mixin _$Owner {
  String get name;

  Map<String, dynamic> toJson();
  $OwnerCopyWith<Owner> get copyWith;
}

abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$OwnerCopyWithImpl<$Res> implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  final Owner _value;
  // ignore: unused_field
  final $Res Function(Owner) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$OwnerCopyWith(_Owner value, $Res Function(_Owner) then) =
      __$OwnerCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res>
    implements _$OwnerCopyWith<$Res> {
  __$OwnerCopyWithImpl(_Owner _value, $Res Function(_Owner) _then)
      : super(_value, (v) => _then(v as _Owner));

  @override
  _Owner get _value => super._value as _Owner;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_Owner(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_Owner implements _Owner {
  _$_Owner({this.name});

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$_$_OwnerFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Owner(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Owner &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$OwnerCopyWith<_Owner> get copyWith =>
      __$OwnerCopyWithImpl<_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OwnerToJson(this);
  }
}

abstract class _Owner implements Owner {
  factory _Owner({String name}) = _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  String get name;
  @override
  _$OwnerCopyWith<_Owner> get copyWith;
}
