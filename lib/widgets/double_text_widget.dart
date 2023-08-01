import 'package:baja_surapp/screens/Essentials Botton/home_Essentials.dart';
import 'package:baja_surapp/screens/Home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../utils/app_styles.dart';


class DoubleTextWidget extends StatelessWidget {

  final String bigText;
  final String smallText;

  const DoubleTextWidget({Key? key , required this.bigText , required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(bigText , style: Styles.robotoMedium,) ,
        InkWell(
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeEssentials()
                ),
            );
          },
          child: Text(smallText , style: Styles.textStyle16b ) ,
        )


      ],
    );
  }
}
