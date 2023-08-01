import 'package:baja_surapp/screens/BottonScreen/botton_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue.shade500,
    //statusBarBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Splash Screen',


      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //backgroundColor: Colors.black54,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: BottomBar(),
      debugShowCheckedModeBanner: false,

    );
  }
}