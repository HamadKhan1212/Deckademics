import 'dart:ui';

import 'package:deckademics/const/reusable_text.dart';
import 'package:flutter/material.dart';

class DiscardDialog extends StatefulWidget {
  const DiscardDialog({Key? key}) : super(key: key);

  @override
  State<DiscardDialog> createState() => _DiscardDialogState();
}

class _DiscardDialogState extends State<DiscardDialog> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: const Color(0xFF212925),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ReusableText(
                title: 'Discard Changes',
                size: 24,
                color: Colors.white,
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableText(
                title:
                    'Are you sure you want to discard your\nchanges? Any unsaved edits will be lost.\n\nClick "Discard" to proceed or "Cancel" to go back and save your changes.',
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ReusableText(
                      title: 'Cancle',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ReusableText(
                      title: 'Discard',
                      color: Color(0xff28b463),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
