import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_feld.dart';

class AddBottomModalSheet extends StatelessWidget {
  const AddBottomModalSheet({super.key});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 32),
          CustomTextField(hint: 'title'),
          SizedBox(height: 16),
          CustomTextField(hint: 'content', maxLines: 5),
        ],
      ),
    );
  }
}
