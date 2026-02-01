import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/all_notes_cubit/notes_cubit_cubit.dart';
import 'package:notesapp/views/widgets/add_notes_bottom_modal_sheet.dart';
import 'package:notesapp/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0),
              ),
              context: context,
              builder: (context) {
                return AddBottomModalSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
