import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notesapp/widgets/add_bottom_modal_sheet.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddBottomModalSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
