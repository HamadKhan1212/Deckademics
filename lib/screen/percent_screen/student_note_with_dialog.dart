import 'package:deckademics/const/reusable_text.dart';
import 'package:deckademics/screen/percent_screen/student_notes.dart';
import 'package:flutter/material.dart';

import '../../const/discard_dialog.dart';

class StudentNotesWithDialog extends StatefulWidget {
  const StudentNotesWithDialog({Key? key}) : super(key: key);

  @override
  State<StudentNotesWithDialog> createState() => _StudentNotesWithDialogState();
}

class _StudentNotesWithDialogState extends State<StudentNotesWithDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212529),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff212529),
        leading: IconButton(
          color: const Color(0xffFFFFFF),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return DiscardDialog();
              },
            );
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            color: const Color(0xffFFFFFF),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StudentNotes()));
            },
            icon: const Icon(Icons.check),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReusableText(
                title: 'December 15',
                color: Colors.white,
                size: 24,
              ),
              SizedBox(
                height: 30,
              ),
              ReusableText(
                title:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Et tempor nec a, eget\nimperdiet vel pellentesque. Tincidunt duis\ntellus rutrum id vitae sed sed. Metus, tellus\nsemper nam pretium in. Gravida risus gravida\nauctor eget eget. Aliquam quisque curabitur\nat enim sed lacus tellus. Odio adipiscing\naliquam convallis at tortor adipiscing sit\nadipiscing semper. Eget morbi velit integer\ncursus tellus ipsum faucibus diam tristique.\nEuismod nunc nibh lectus platea quam diam\nnon quisque sed. Nisl ante at dolor\ncondimentum nisl facilisis non.',
                color: Colors.white,
                size: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
