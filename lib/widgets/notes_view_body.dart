import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_item.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [SizedBox(height: 50), CustomAppBar(), NoteItem()],
      ),
    );
  }
}
