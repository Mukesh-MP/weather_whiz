// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wheather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WheatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWheatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWheatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWheatherData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWheatherData value) getWheatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheatherData value)? getWheatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheatherData value)? getWheatherData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WheatherEventCopyWith<$Res> {
  factory $WheatherEventCopyWith(
          WheatherEvent value, $Res Function(WheatherEvent) then) =
      _$WheatherEventCopyWithImpl<$Res, WheatherEvent>;
}

/// @nodoc
class _$WheatherEventCopyWithImpl<$Res, $Val extends WheatherEvent>
    implements $WheatherEventCopyWith<$Res> {
  _$WheatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWheatherDataImplCopyWith<$Res> {
  factory _$$GetWheatherDataImplCopyWith(_$GetWheatherDataImpl value,
          $Res Function(_$GetWheatherDataImpl) then) =
      __$$GetWheatherDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWheatherDataImplCopyWithImpl<$Res>
    extends _$WheatherEventCopyWithImpl<$Res, _$GetWheatherDataImpl>
    implements _$$GetWheatherDataImplCopyWith<$Res> {
  __$$GetWheatherDataImplCopyWithImpl(
      _$GetWheatherDataImpl _value, $Res Function(_$GetWheatherDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWheatherDataImpl implements _GetWheatherData {
  const _$GetWheatherDataImpl();

  @override
  String toString() {
    return 'WheatherEvent.getWheatherData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWheatherDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWheatherData,
  }) {
    return getWheatherData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWheatherData,
  }) {
    return getWheatherData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWheatherData,
    required TResult orElse(),
  }) {
    if (getWheatherData != null) {
      return getWheatherData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWheatherData value) getWheatherData,
  }) {
    return getWheatherData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheatherData value)? getWheatherData,
  }) {
    return getWheatherData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheatherData value)? getWheatherData,
    required TResult orElse(),
  }) {
    if (getWheatherData != null) {
      return getWheatherData(this);
    }
    return orElse();
  }
}

abstract class _GetWheatherData implements WheatherEvent {
  const factory _GetWheatherData() = _$GetWheatherDataImpl;
}

/// @nodoc
mixin _$WheatherState {
  bool get isLoading => throw _privateConstructorUsedError;
  WheatherResponseModel? get wheatherData => throw _privateConstructorUsedError;
  Option<Either<MainFailure, WheatherResponseModel>>
      get successOrFailureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WheatherStateCopyWith<WheatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WheatherStateCopyWith<$Res> {
  factory $WheatherStateCopyWith(
          WheatherState value, $Res Function(WheatherState) then) =
      _$WheatherStateCopyWithImpl<$Res, WheatherState>;
  @useResult
  $Res call(
      {bool isLoading,
      WheatherResponseModel? wheatherData,
      Option<Either<MainFailure, WheatherResponseModel>>
          successOrFailureOption});
}

/// @nodoc
class _$WheatherStateCopyWithImpl<$Res, $Val extends WheatherState>
    implements $WheatherStateCopyWith<$Res> {
  _$WheatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? wheatherData = freezed,
    Object? successOrFailureOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      wheatherData: freezed == wheatherData
          ? _value.wheatherData
          : wheatherData // ignore: cast_nullable_to_non_nullable
              as WheatherResponseModel?,
      successOrFailureOption: null == successOrFailureOption
          ? _value.successOrFailureOption
          : successOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, WheatherResponseModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WheatherStateImplCopyWith<$Res>
    implements $WheatherStateCopyWith<$Res> {
  factory _$$WheatherStateImplCopyWith(
          _$WheatherStateImpl value, $Res Function(_$WheatherStateImpl) then) =
      __$$WheatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      WheatherResponseModel? wheatherData,
      Option<Either<MainFailure, WheatherResponseModel>>
          successOrFailureOption});
}

/// @nodoc
class __$$WheatherStateImplCopyWithImpl<$Res>
    extends _$WheatherStateCopyWithImpl<$Res, _$WheatherStateImpl>
    implements _$$WheatherStateImplCopyWith<$Res> {
  __$$WheatherStateImplCopyWithImpl(
      _$WheatherStateImpl _value, $Res Function(_$WheatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? wheatherData = freezed,
    Object? successOrFailureOption = null,
  }) {
    return _then(_$WheatherStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      wheatherData: freezed == wheatherData
          ? _value.wheatherData
          : wheatherData // ignore: cast_nullable_to_non_nullable
              as WheatherResponseModel?,
      successOrFailureOption: null == successOrFailureOption
          ? _value.successOrFailureOption
          : successOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, WheatherResponseModel>>,
    ));
  }
}

/// @nodoc

class _$WheatherStateImpl implements _WheatherState {
  const _$WheatherStateImpl(
      {required this.isLoading,
      this.wheatherData,
      required this.successOrFailureOption});

  @override
  final bool isLoading;
  @override
  final WheatherResponseModel? wheatherData;
  @override
  final Option<Either<MainFailure, WheatherResponseModel>>
      successOrFailureOption;

  @override
  String toString() {
    return 'WheatherState(isLoading: $isLoading, wheatherData: $wheatherData, successOrFailureOption: $successOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WheatherStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.wheatherData, wheatherData) ||
                other.wheatherData == wheatherData) &&
            (identical(other.successOrFailureOption, successOrFailureOption) ||
                other.successOrFailureOption == successOrFailureOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, wheatherData, successOrFailureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WheatherStateImplCopyWith<_$WheatherStateImpl> get copyWith =>
      __$$WheatherStateImplCopyWithImpl<_$WheatherStateImpl>(this, _$identity);
}

abstract class _WheatherState implements WheatherState {
  const factory _WheatherState(
      {required final bool isLoading,
      final WheatherResponseModel? wheatherData,
      required final Option<Either<MainFailure, WheatherResponseModel>>
          successOrFailureOption}) = _$WheatherStateImpl;

  @override
  bool get isLoading;
  @override
  WheatherResponseModel? get wheatherData;
  @override
  Option<Either<MainFailure, WheatherResponseModel>> get successOrFailureOption;
  @override
  @JsonKey(ignore: true)
  _$$WheatherStateImplCopyWith<_$WheatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
