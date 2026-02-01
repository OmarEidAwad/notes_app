import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  FetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>("notes Box");

      emit(NotesCubitSuccess(notesBox.values.toList()));
    } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
