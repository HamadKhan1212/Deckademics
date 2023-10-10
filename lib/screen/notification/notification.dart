import 'package:flutter/material.dart';

import '../../const/reusable_text.dart';
import 'history_container.dart';
import 'listview_current.dart';
import 'notification_with_zero_current.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212529),
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('images/notification.png')),
                  SizedBox(
                    width: 20,
                  ),
                  ReusableText(
                    title: 'Notifications',
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      _current_index = 0;
                    });
                  },
                  child: ReusableText(
                    title: 'Current',
                    color: _current_index == 0
                        ? Colors.white
                        : Colors.grey.shade400,
                    size: 18,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      _current_index = 1;
                    });
                  },
                  child: ReusableText(
                    title: 'History',
                    color: _current_index == 1
                        ? Colors.white
                        : Colors.grey.shade400,
                    size: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            _current_index == 0
                ? Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationScreenWithZeroCurrent()));
                          },
                          child: ReusableText(
                            title: 'Clear All',
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                      ),
                      ListViewCurrent(),
                    ],
                  )
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ReusableText(
                              title: 'Sept 3',
                              size: 18,
                              color: Colors.white,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              child: ReusableText(
                                title: 'Clear All',
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NotificationScreenWithZeroCurrent()));
                        },
                        child: HistoryContainer(
                          title: 'Makeup Class',
                          subtitle:
                              'You have a makeup class with Cater on Sept 13!',
                          backgroundColor: Color(0xff3F51B5),
                        ),
                      ),
                      HistoryContainer(
                        title: 'Attendance',
                        subtitle: 'Did Cater show up on Thurs Sept 5?',
                        backgroundColor: Color(0xffFFC107),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: ReusableText(
                            title: 'Aug 27',
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      HistoryContainer(
                        title: 'Student Notes',
                        subtitle:
                            'Don’t forget to your class note for Cater for Aug 27.',
                        backgroundColor: Color(0xffFF5722),
                      ),
                      HistoryContainer(
                        title: 'New Session',
                        subtitle: 'A new seesion starts next week.',
                        backgroundColor: Color(0xff009688),
                      ),
                      HistoryContainer(
                        title: 'New Session',
                        subtitle: 'A new seesion starts next week.',
                        backgroundColor: Color(0xff009688),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: ReusableText(
                            title: 'July 26',
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      HistoryContainer(
                        title: 'New Student',
                        subtitle:
                            'You have a new student Kaylynn Ford starting today.',
                        backgroundColor: Color(0xff9C27B0),
                      ),
                      HistoryContainer(
                        title: 'Student Passing',
                        subtitle:
                            'Your student Lindsey Mango is moving into a new course.',
                        backgroundColor: Color(0xff607D8B),
                      ),
                      // HistoryContainer(
                      //   title: 'Makeup Class',
                      //   subtitle:
                      //       'You have a makeup class with Cater on Sept 13!',
                      //   backgroundColor: Color(0xff3F51B5),
                      // ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
