import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:ai_image_generator/.env/api.dart';
import 'package:dio/dio.dart';

import 'package:ai_image_generator/Failures/main_failures.dart';
import 'package:ai_image_generator/infrastructure/prompt_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: GenerateImageService)
class GetImageImplementation implements GenerateImageService {
  @override
  Future<Either<MainFailure, Uint8List?>> getImage(String prompt) async {
    try {
      String engineId = "stable-diffusion-v1-6";
      String apiHost = 'https://api.stability.ai';
      debugPrint(prompt);
      final response = await http.post(
          Uri.parse('$apiHost/v1/generation/$engineId/text-to-image'),
          headers: {
            "Content-Type": "application/json",
            "Accept": "image/png",
            "Authorization": "Bearer $apiKey"
          },
          body: jsonEncode({
            "text_prompts": [
              {
                "text": prompt,
                "weight": 1,
              }
            ],
            "cfg_scale": 7,
            "height": 1024,
            "width": 1024,
            "samples": 1,
            "steps": 30,
          }));

      if (response.statusCode == 200) {
        debugPrint(response.statusCode.toString());
        final uint8lis = response.bodyBytes;
        print(uint8lis);
        return Right(uint8lis);
      }else{
        return Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return Left(MainFailure.clientFailure());
    }
  }
}
