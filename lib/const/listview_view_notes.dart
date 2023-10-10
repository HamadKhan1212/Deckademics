import 'package:deckademics/const/reusable_text.dart';
import 'package:flutter/material.dart';

import '../screen/percent_screen/notes_detail.dart';

class Browse {
  String title;
  String subtitle;
  String image;

  Browse({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

class ListView_ViewNotes extends StatefulWidget {
  const ListView_ViewNotes({
    Key? key,
  }) : super(key: key);

  @override
  State<ListView_ViewNotes> createState() => _ListView_ViewNotesState();
}

class _ListView_ViewNotesState extends State<ListView_ViewNotes> {
  int _current = 0;
  final List<Browse> lst = [
    Browse(
        title: 'December 5',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'images/Ellipse29.png'),
    Browse(
        title: 'December 29',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'images/Ellipse29.png'),
    Browse(
        title: 'December 22',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'images/Ellipse26.png'),
    Browse(
        title: 'December 15',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'images/Ellipse29.png'),
    Browse(
        title: 'December 8',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'images/Ellipse29.png'),
    Browse(
        title: 'December 1',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'images/Ellipse29.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotesDetail()));
                }
                if (index == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotesDetail()));
                }
                if (index == 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotesDetail()));
                }
                if (index == 3) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotesDetail()));
                }
                if (index == 4) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotesDetail()));
                }
              },
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(lst[index].image),
                ),
                title: ReusableText(
                  title: lst[index].title,
                  color: Colors.white,
                  size: 24,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ReusableText(
                    title: lst[index].subtitle,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ),
            ),
          );
          ;
        },
      ),
    );
  }
}
