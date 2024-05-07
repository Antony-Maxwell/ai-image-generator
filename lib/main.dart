import 'package:ai_image_generator/di/injectable.dart';
import 'package:ai_image_generator/infrastructure/bloc/prompt_bloc.dart';
import 'package:ai_image_generator/ui/image_generator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<PromptBloc>(),),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey.shade900,
            ),
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.grey.shade900,
          ),
          home: const ImageGeneratorScreen(),
        ),
    );
  }
}