import 'package:deckademics/const/reusable_text.dart';
import 'package:flutter/material.dart';

class StudentNotesEmptyState extends StatefulWidget {
  const StudentNotesEmptyState({Key? key}) : super(key: key);

  @override
  State<StudentNotesEmptyState> createState() => _StudentNotesEmptyStateState();
}

class _StudentNotesEmptyStateState extends State<StudentNotesEmptyState> {
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
              ReusableText(
                title: 'December 15',
                color: Color(0xffF5F5F7),
                size: 24,
              ),
              SizedBox(
                height: 25,
              ),
              ReusableText(
                title: 'Type Something Here',
                color: Colors.white,
                size: 24,
                weight: FontWeight.w300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
