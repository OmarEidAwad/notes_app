import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';

class EditColorsNoteListView extends StatefulWidget {
  const EditColorsNoteListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorsNoteListView> createState() => _EditColorsNoteListViewState();
}

class _EditColorsNoteListViewState extends State<EditColorsNoteListView> {
  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.brown,
    Colors.cyan,
    Colors.pink,
    Colors.teal,
  ];
  late int selectedIndex;
  @override
  void initState() {
    super.initState();
    selectedIndex = colors.indexWhere(
      (color) => color.value == widget.note.color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.note.color = colors[index].value;
              });
            },
            child: ColorItem(
              selected: selectedIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.selected, required this.color});
  final bool selected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child:
          selected
              ? CircleAvatar(
                radius: 38,
                backgroundColor: Colors.white,
                child: CircleAvatar(radius: 34, backgroundColor: color),
              )
              : CircleAvatar(radius: 38, backgroundColor: color),
    );
  }
}
