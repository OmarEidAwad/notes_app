import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotesViewBody());
  }
}