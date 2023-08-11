import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            color: Colors.red,
              child: Column(
            children: [
              Stack(
                //alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: Container(
                      child: Image.asset(
                        "assets/images/test.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(

                      child: Container(
                          width: 80,
                          height: 20,
                          color: Colors.blue,
                          child: Text(
                            "5 min read",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),

                  ),
                  Center(

                      child: Container(
                          width: 80,
                          height: 20,
                          color: Colors.red,
                          child: Text(
                            "Symbol",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),

                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 220),
                      child: Container(
                          width: 250,
                          height: 90,
                          //color: Colors.green,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                  "Grills , patio furniture , and more are up to 35% off during walmart Diy y dine sale",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)))),
                    ),
                  ),

                  Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),

                  )
                ],
              ),
              Text("data")
            ],
          )),

        ],
      ),
    );
  }
}
