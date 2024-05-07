
import 'package:ai_image_generator/infrastructure/bloc/prompt_bloc.dart';
import 'package:ai_image_generator/ui/widgets/image_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_saver/gallery_saver.dart';

class PromptContainer extends StatelessWidget {
  const PromptContainer({
    required this.state,
    super.key,
    required this.promptController,
  });

  final TextEditingController promptController;
  final PromptState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enter your Prompt",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: promptController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.deepPurple),
                      ),
                      onPressed: () {
                        BlocProvider.of<PromptBloc>(context)
                            .add(PromptEvent.getImage(promptController.text));
                        promptController.clear();
                      },
                      icon: const Icon(Icons.generating_tokens),
                      label: const Text('Generate')),
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(onPressed: ()async{
                  // ImageSaver.saveImage(state.uint8list!);
                  ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Image saved successfully'),
                ),
              );
                }, icon: Icon(Icons.save)))
            ],
          )
        ],
      ),
    );
  }
}
