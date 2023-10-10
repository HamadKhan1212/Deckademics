import 'package:deckademics/const/reusable_text.dart';
import 'package:flutter/material.dart';

class HistoryContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color backgroundColor;
  const HistoryContainer(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: backgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: title,
                  color: Colors.white,
                  size: 14,
                ),
                SizedBox(
                  height: 5,
                ),
                ReusableText(
                  title: subtitle,
                  color: Colors.white,
                  size: 09,
                )
              ],
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
