import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_app_bar.dart';
import 'package:notesapp/views/widgets/custom_text_feld.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),

          CustomAppBar(title: 'Edit Notes', icon: Icons.check),
          SizedBox(height: 22),

          CustomFormTextField(hint: 'title'),
          SizedBox(height: 16),

          CustomFormTextField(hint: " content", maxLines: 5),
        ],
      ),
    );
  }
}
