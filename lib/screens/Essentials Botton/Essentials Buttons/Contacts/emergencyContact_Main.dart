import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
              SizedBox(
                height: 300,
                child: Expanded(
                  //color: Colors.red
                  
                  child: ListView(
                    padding: EdgeInsets.all(20),
                    children: [
                      Text("Choose an option" , style: TextStyle(fontWeight: FontWeight.bold),),
                      Gap(10),
                      Card(
                        elevation: 2,
                        child: ListTile(
                          leading: new Icon(Icons.call , size: 40,),
                          title: new Text('Local'),
                          subtitle: Text("612-15-900-16"),
                          trailing: Icon(Icons.arrow_right_outlined),
                          onTap: () async {
                             //launch('+6121590016');
                            //FlutterPhoneDirectCaller.callNumber();
                            //final String phoneNumber = '526121590016';
                            //final String phoneUrl = 'tel:$phoneNumber';
                            final Uri urltest = Uri(scheme: 'tel' , path: "452 869 8569",);
                            //final url = Uri(path: phoneUrl);
                              if(await canLaunchUrl(urltest)){
                               launchUrl(urltest);
                            } else{ print("Unable to launch phone app.");}

                          },
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: ListTile(
                          leading: new Icon(Icons.call , size: 40,),
                          title: new Text('International'),
                          subtitle: Text("612-15-900-16"),
                          trailing: Icon(Icons.arrow_right_outlined),
                          onTap: () {
                            final webSiteUr = Uri.parse('https://google.com');
                            launchUrl(webSiteUr);
                          },
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: ListTile(
                          leading: new Icon(Icons.wallet , size: 40,),
                          title: new Text('Whatssap'),
                          subtitle: Text("Chat"),
                          trailing: Icon(Icons.arrow_right_outlined),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
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
          color: Colors.black12,
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
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
