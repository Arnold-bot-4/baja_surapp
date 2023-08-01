import 'package:baja_surapp/screens/Home/Components/States/card_Page/silver_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    /* appBar: AppBar(
       title: SliverAppBarExample(),
     ),*/
      body: SliverAppBarExample(),



    );
  }
}
