// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Verification _$VerificationFromJson(Map<String, dynamic> json) {
  return _Verification.fromJson(json);
}

/// @nodoc
mixin _$Verification {
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this Verification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationCopyWith<Verification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCopyWith<$Res> {
  factory $VerificationCopyWith(
          Verification value, $Res Function(Verification) then) =
      _$VerificationCopyWithImpl<$Res, Verification>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$VerificationCopyWithImpl<$Res, $Val extends Verification>
    implements $VerificationCopyWith<$Res> {
  _$VerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationImplCopyWith<$Res>
    implements $VerificationCopyWith<$Res> {
  factory _$$VerificationImplCopyWith(
          _$VerificationImpl value, $Res Function(_$VerificationImpl) then) =
      __$$VerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$VerificationImplCopyWithImpl<$Res>
    extends _$VerificationCopyWithImpl<$Res, _$VerificationImpl>
    implements _$$VerificationImplCopyWith<$Res> {
  __$$VerificationImplCopyWithImpl(
      _$VerificationImpl _value, $Res Function(_$VerificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$VerificationImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationImpl implements _Verification {
  const _$VerificationImpl({required this.success});

  factory _$VerificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationImplFromJson(json);

  @override
  final bool success;

  @override
  String toString() {
    return 'Verification(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationImplCopyWith<_$VerificationImpl> get copyWith =>
      __$$VerificationImplCopyWithImpl<_$VerificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationImplToJson(
      this,
    );
  }
}

abstract class _Verification implements Verification {
  const factory _Verification({required final bool success}) =
      _$VerificationImpl;

  factory _Verification.fromJson(Map<String, dynamic> json) =
      _$VerificationImpl.fromJson;

  @override
  bool get success;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationImplCopyWith<_$VerificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
