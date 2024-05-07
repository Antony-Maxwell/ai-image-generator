part of 'prompt_bloc.dart';

@freezed
class PromptState with _$PromptState{
  const factory PromptState({
    required bool isLoading,
    Uint8List? uint8list,
    required Option<Either<MainFailure, Uint8List?>> uintListsuccessFailureOption,
  }) = _PromptState;

  factory PromptState.initial() => const PromptState(
    isLoading: false,
    uintListsuccessFailureOption: None(),
  );
}

