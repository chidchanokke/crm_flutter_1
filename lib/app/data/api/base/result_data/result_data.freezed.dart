// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultData<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(Failure? failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(Failure? failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessData<T> value) success,
    required TResult Function(_FailureData<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessData<T> value)? success,
    TResult? Function(_FailureData<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessData<T> value)? success,
    TResult Function(_FailureData<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<T, $Res> {
  factory $ResultDataCopyWith(
          ResultData<T> value, $Res Function(ResultData<T>) then) =
      _$ResultDataCopyWithImpl<T, $Res, ResultData<T>>;
}

/// @nodoc
class _$ResultDataCopyWithImpl<T, $Res, $Val extends ResultData<T>>
    implements $ResultDataCopyWith<T, $Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessDataCopyWith<T, $Res> {
  factory _$$_SuccessDataCopyWith(
          _$_SuccessData<T> value, $Res Function(_$_SuccessData<T>) then) =
      __$$_SuccessDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$_SuccessDataCopyWithImpl<T, $Res>
    extends _$ResultDataCopyWithImpl<T, $Res, _$_SuccessData<T>>
    implements _$$_SuccessDataCopyWith<T, $Res> {
  __$$_SuccessDataCopyWithImpl(
      _$_SuccessData<T> _value, $Res Function(_$_SuccessData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SuccessData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_SuccessData<T> extends _SuccessData<T> {
  const _$_SuccessData(this.data) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'ResultData<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessDataCopyWith<T, _$_SuccessData<T>> get copyWith =>
      __$$_SuccessDataCopyWithImpl<T, _$_SuccessData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(Failure? failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(Failure? failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessData<T> value) success,
    required TResult Function(_FailureData<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessData<T> value)? success,
    TResult? Function(_FailureData<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessData<T> value)? success,
    TResult Function(_FailureData<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessData<T> extends ResultData<T> {
  const factory _SuccessData(final T? data) = _$_SuccessData<T>;
  const _SuccessData._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$_SuccessDataCopyWith<T, _$_SuccessData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureDataCopyWith<T, $Res> {
  factory _$$_FailureDataCopyWith(
          _$_FailureData<T> value, $Res Function(_$_FailureData<T>) then) =
      __$$_FailureDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$_FailureDataCopyWithImpl<T, $Res>
    extends _$ResultDataCopyWithImpl<T, $Res, _$_FailureData<T>>
    implements _$$_FailureDataCopyWith<T, $Res> {
  __$$_FailureDataCopyWithImpl(
      _$_FailureData<T> _value, $Res Function(_$_FailureData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_FailureData<T>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_FailureData<T> extends _FailureData<T> {
  const _$_FailureData(this.failure) : super._();

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ResultData<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureData<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureDataCopyWith<T, _$_FailureData<T>> get copyWith =>
      __$$_FailureDataCopyWithImpl<T, _$_FailureData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(Failure? failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(Failure? failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessData<T> value) success,
    required TResult Function(_FailureData<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessData<T> value)? success,
    TResult? Function(_FailureData<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessData<T> value)? success,
    TResult Function(_FailureData<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureData<T> extends ResultData<T> {
  const factory _FailureData(final Failure? failure) = _$_FailureData<T>;
  const _FailureData._() : super._();

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$_FailureDataCopyWith<T, _$_FailureData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
