import 'package:ai_image_generator/infrastructure/bloc/prompt_bloc.dart';
import 'package:ai_image_generator/ui/widgets/prompt_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class ImageGeneratorScreen extends StatelessWidget {
  const ImageGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController promptController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Generate Images'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: BlocBuilder<PromptBloc, PromptState>(
              builder: (context, state) {
                if (state.uint8list == null || state.isLoading) {
                  return Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: MemoryImage(state.uint8list!),
                      ),
                    ),
                  );
                }
              },
            )),
            BlocBuilder<PromptBloc, PromptState>(
              builder: (context, state) {
                return PromptContainer(
                  promptController: promptController,
                  state: state,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
