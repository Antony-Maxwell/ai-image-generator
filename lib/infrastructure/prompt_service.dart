import 'dart:typed_data';

import 'package:ai_image_generator/Failures/main_failures.dart';
import 'package:dartz/dartz.dart';

abstract class GenerateImageService{
  Future<Either<MainFailure,Uint8List?>> getImage(String prompt);
}