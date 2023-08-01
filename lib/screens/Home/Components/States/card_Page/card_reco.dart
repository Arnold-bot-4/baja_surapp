import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardReco extends StatelessWidget {
  const CardReco({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      margin: new EdgeInsets.all(15.0),
      decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          gradient: new LinearGradient(colors: [Colors.yellow.shade300, Colors.redAccent],
              begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Padding(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
            child: Image.network(
                'https://picsum.photos/500/500?random=1',
                 height: 80,
                 fit: BoxFit.cover,
            ),

          ),
          new Expanded(child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text('New York', style: new TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.bold),),
              new SizedBox(height: 8.0,),
              new Text('Sunny', style: new TextStyle(fontSize: 12.0, color: Colors.white70),),
            ],)),
          new Padding(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
            child: new Text('12°', style: new TextStyle(fontSize: 30.0, color: Colors.white70),),)

        ],),
    );
  }
}
