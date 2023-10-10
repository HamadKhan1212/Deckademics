import 'package:deckademics/const/reusable_text.dart';
import 'package:flutter/material.dart';

class AddNotesPopOff extends StatefulWidget {
  const AddNotesPopOff({Key? key}) : super(key: key);

  @override
  State<AddNotesPopOff> createState() => _AddNotesPopOffState();
}

class _AddNotesPopOffState extends State<AddNotesPopOff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212529),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              ReusableText(
                title: 'Baby Scratch',
                color: Colors.white,
                size: 24,
              ),
              SizedBox(
                height: 150,
              ),
              Image(
                image: AssetImage('images/addNote.png'),
              ),
              SizedBox(
                height: 10,
              ),
              ReusableText(
                textAlign: TextAlign.center,
                title:
                    'No notes created yet.\nStart by tapping "+" to add your first note.',
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
