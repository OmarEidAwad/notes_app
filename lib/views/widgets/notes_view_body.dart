import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/all_notes_cubit/notes_cubit_cubit.dart';
import 'package:notesapp/views/widgets/notes_item_listview.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<NotesCubitCubit>(context).FetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          const CustomAppBar(title: 'Notes', icon: Icons.search),
          SizedBox(height: 12),

          const NotesItemListview(),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
