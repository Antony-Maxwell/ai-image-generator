part of 'prompt_bloc.dart';

@freezed
class PromptEvent with _$PromptEvent{
  const factory PromptEvent.getImage(String prompt) = GetImage;
}
