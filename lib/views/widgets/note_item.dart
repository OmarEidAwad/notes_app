import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/all_notes_cubit/notes_cubit_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.notes});
  @override
  NoteModel notes;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNotesView(note: notes);
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(notes.color),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  notes.title,
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    notes.content,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(.4),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<NotesCubitCubit>(context).FetchAllNotes();
                  },
                  icon: const Icon(Icons.delete, color: Colors.black, size: 35),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  notes.date,
                  style: TextStyle(color: Colors.black.withOpacity(.4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
