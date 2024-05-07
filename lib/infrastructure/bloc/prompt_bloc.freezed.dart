// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromptEvent {
  String get prompt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prompt) getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prompt)? getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prompt)? getImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImage value) getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImage value)? getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImage value)? getImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromptEventCopyWith<PromptEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptEventCopyWith<$Res> {
  factory $PromptEventCopyWith(
          PromptEvent value, $Res Function(PromptEvent) then) =
      _$PromptEventCopyWithImpl<$Res, PromptEvent>;
  @useResult
  $Res call({String prompt});
}

/// @nodoc
class _$PromptEventCopyWithImpl<$Res, $Val extends PromptEvent>
    implements $PromptEventCopyWith<$Res> {
  _$PromptEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetImageImplCopyWith<$Res>
    implements $PromptEventCopyWith<$Res> {
  factory _$$GetImageImplCopyWith(
          _$GetImageImpl value, $Res Function(_$GetImageImpl) then) =
      __$$GetImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String prompt});
}

/// @nodoc
class __$$GetImageImplCopyWithImpl<$Res>
    extends _$PromptEventCopyWithImpl<$Res, _$GetImageImpl>
    implements _$$GetImageImplCopyWith<$Res> {
  __$$GetImageImplCopyWithImpl(
      _$GetImageImpl _value, $Res Function(_$GetImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
  }) {
    return _then(_$GetImageImpl(
      null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImageImpl implements GetImage {
  const _$GetImageImpl(this.prompt);

  @override
  final String prompt;

  @override
  String toString() {
    return 'PromptEvent.getImage(prompt: $prompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImageImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      __$$GetImageImplCopyWithImpl<_$GetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prompt) getImage,
  }) {
    return getImage(prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prompt)? getImage,
  }) {
    return getImage?.call(prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prompt)? getImage,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImage value) getImage,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImage value)? getImage,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImage value)? getImage,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class GetImage implements PromptEvent {
  const factory GetImage(final String prompt) = _$GetImageImpl;

  @override
  String get prompt;
  @override
  @JsonKey(ignore: true)
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromptState {
  bool get isLoading => throw _privateConstructorUsedError;
  Uint8List? get uint8list => throw _privateConstructorUsedError;
  Option<Either<MainFailure, Uint8List?>> get uintListsuccessFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromptStateCopyWith<PromptState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptStateCopyWith<$Res> {
  factory $PromptStateCopyWith(
          PromptState value, $Res Function(PromptState) then) =
      _$PromptStateCopyWithImpl<$Res, PromptState>;
  @useResult
  $Res call(
      {bool isLoading,
      Uint8List? uint8list,
      Option<Either<MainFailure, Uint8List?>> uintListsuccessFailureOption});
}

/// @nodoc
class _$PromptStateCopyWithImpl<$Res, $Val extends PromptState>
    implements $PromptStateCopyWith<$Res> {
  _$PromptStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? uint8list = freezed,
    Object? uintListsuccessFailureOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uint8list: freezed == uint8list
          ? _value.uint8list
          : uint8list // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      uintListsuccessFailureOption: null == uintListsuccessFailureOption
          ? _value.uintListsuccessFailureOption
          : uintListsuccessFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Uint8List?>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptStateImplCopyWith<$Res>
    implements $PromptStateCopyWith<$Res> {
  factory _$$PromptStateImplCopyWith(
          _$PromptStateImpl value, $Res Function(_$PromptStateImpl) then) =
      __$$PromptStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Uint8List? uint8list,
      Option<Either<MainFailure, Uint8List?>> uintListsuccessFailureOption});
}

/// @nodoc
class __$$PromptStateImplCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$PromptStateImpl>
    implements _$$PromptStateImplCopyWith<$Res> {
  __$$PromptStateImplCopyWithImpl(
      _$PromptStateImpl _value, $Res Function(_$PromptStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? uint8list = freezed,
    Object? uintListsuccessFailureOption = null,
  }) {
    return _then(_$PromptStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uint8list: freezed == uint8list
          ? _value.uint8list
          : uint8list // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      uintListsuccessFailureOption: null == uintListsuccessFailureOption
          ? _value.uintListsuccessFailureOption
          : uintListsuccessFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Uint8List?>>,
    ));
  }
}

/// @nodoc

class _$PromptStateImpl implements _PromptState {
  const _$PromptStateImpl(
      {required this.isLoading,
      this.uint8list,
      required this.uintListsuccessFailureOption});

  @override
  final bool isLoading;
  @override
  final Uint8List? uint8list;
  @override
  final Option<Either<MainFailure, Uint8List?>> uintListsuccessFailureOption;

  @override
  String toString() {
    return 'PromptState(isLoading: $isLoading, uint8list: $uint8list, uintListsuccessFailureOption: $uintListsuccessFailureOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.uint8list, uint8list) &&
            (identical(other.uintListsuccessFailureOption,
                    uintListsuccessFailureOption) ||
                other.uintListsuccessFailureOption ==
                    uintListsuccessFailureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(uint8list),
      uintListsuccessFailureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptStateImplCopyWith<_$PromptStateImpl> get copyWith =>
      __$$PromptStateImplCopyWithImpl<_$PromptStateImpl>(this, _$identity);
}

abstract class _PromptState implements PromptState {
  const factory _PromptState(
      {required final bool isLoading,
      final Uint8List? uint8list,
      required final Option<Either<MainFailure, Uint8List?>>
          uintListsuccessFailureOption}) = _$PromptStateImpl;

  @override
  bool get isLoading;
  @override
  Uint8List? get uint8list;
  @override
  Option<Either<MainFailure, Uint8List?>> get uintListsuccessFailureOption;
  @override
  @JsonKey(ignore: true)
  _$$PromptStateImplCopyWith<_$PromptStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
