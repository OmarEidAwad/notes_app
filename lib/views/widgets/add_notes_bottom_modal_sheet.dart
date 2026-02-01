import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit/cubit/add_notes_cubit.dart';
import 'package:notesapp/views/widgets/add_form_notes.dart';

class AddBottomModalSheet extends StatelessWidget {
  const AddBottomModalSheet({super.key});

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNotesFailure) {
            print('faileddddddddd ${state.errMessage}');
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text(state.errMessage),
            //   ),
            // );
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            // meke me can not edit in screen
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                right: 16,
                left: 16,
              ),
              child: SingleChildScrollView(child: AddFormNote()),
            ),
          );
        },
      ),
    );
  }
}
