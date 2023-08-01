import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EmergencyContactMain extends StatefulWidget {
  @override
  _EmergencyContactState createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContactMain> {
  //const EmergencyContactMain({super.key});

  void _showpersistenBottom() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: new Icon(Icons.photo),
                title: new Text('Photo'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.music_note),
                title: new Text('Music'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.share),
                title: new Text('Share'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        _showpersistenBottom();
      },
      child: Container(
        width: 325,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(children: [
                Icon(Icons.call),
                Gap(12),
                Text("Tourism call center"),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.arrow_right_outlined,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
