import 'dart:isolate';
import 'dart:typed_data';

import 'package:ai_image_generator/Failures/main_failures.dart';
import 'package:ai_image_generator/infrastructure/prompt_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'prompt_event.dart';
part 'prompt_state.dart';
part 'prompt_bloc.freezed.dart';

@injectable
class PromptBloc extends Bloc<PromptEvent, PromptState> {
  final GenerateImageService _generateImageService;
  PromptBloc(this._generateImageService) : super(PromptState.initial()) {
    on<GetImage>((event, emit)async {
      emit(
        state.copyWith(
          isLoading: true,
          uintListsuccessFailureOption: none(),
        ),
      );
      final Either<MainFailure,Uint8List?> unitListOption = await _generateImageService.getImage(event.prompt);
      emit(
        unitListOption.fold((failure){
          return state.copyWith(
            isLoading: false,
            uintListsuccessFailureOption: Some(Left(failure)),
          );
        } , (success){
          return state.copyWith(
            isLoading: false,
            uint8list: success,
            uintListsuccessFailureOption: Some(Right(success)),
          );
        })
      );
    });
  }
}
