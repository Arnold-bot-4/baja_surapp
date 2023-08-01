import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget box_UsefulApp(String Title , String TextBox){

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.black12,
    ),
    width: 330,
    height: 120,
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding:
            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Container(
              width: 95,
              height: 95,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset("assets/images/uber.png"),
            )),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //color: Colors.red,
                width: 50,
                child: Text(Title,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Gap(6),
              Container(
                //color: Colors.red,
                width: 170,
                height: 40,
                child: Text(
                    TextBox,
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.arrow_circle_right_outlined , color: Colors.black,),)
      ],
    ),
  );
}