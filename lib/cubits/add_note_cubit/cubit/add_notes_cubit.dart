import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color selectedColor = const Color.fromARGB(255, 110, 110, 105);
  addNote(NoteModel note) async {
    note.color = selectedColor.value;
    emit(AddNotesLoading());

    try {
      var notesBox = Hive.box<NoteModel>("notes Box");

      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
