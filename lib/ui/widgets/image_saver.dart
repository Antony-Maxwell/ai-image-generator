// import 'dart:io';
// import 'dart:typed_data';

// import 'package:gallery_saver/gallery_saver.dart';
// import 'package:path_provider/path_provider.dart';

// class ImageSaver {
//   static Future<void> saveImage(Uint8List imageBytes) async {
//     try {
//       // Get the temporary directory
//       Directory tempDir = await getTemporaryDirectory();

//       // Create a new file in the temporary directory
//       File tempFile = File('${tempDir.path}/temp_image.png');

//       // Write the image bytes to the file
//       await tempFile.writeAsBytes(imageBytes);

//       // Save the image file to the gallery
//       await GallerySaver.saveImage(tempFile.path);

//       // Show a success message
//       print('Image saved to gallery');
//     } catch (e) {
//       // Show an error message
//       print('Failed to save image: $e');
//     }
//   }
// }