import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesItemListview extends StatelessWidget {
  const NotesItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) {
          return const NoteItem();
        },
      ),
    );
  }
}
