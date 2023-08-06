import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EmergecyMain extends StatelessWidget {
  const EmergecyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //Containertest(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 180,
              height: 180,
              //alignment: Alignment.center,
              color: Colors.black12,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                      child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Icon(Icons.home, size: 60),
                    ),
                  )),

                  Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Gap(5),
                                  Text(
                                    "Police",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Toll-free in singapore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "1800 736 20000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Toll-free in singapore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "1800 736 20000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Operanting Hours",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "Monday - Friday: 9AM - 6PM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 180,
              height: 180,
              //alignment: Alignment.center,
              color: Colors.black12,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                      child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Icon(Icons.local_police, size: 60),
                    ),
                  )),

                  Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Gap(5),
                                  Text(
                                    "Police",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Toll-free in singapore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "1800 736 20000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Toll-free in singapore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "1800 736 20000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Operanting Hours",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "Monday - Friday: 9AM - 6PM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 180,
              height: 180,
              //alignment: Alignment.center,
              color: Colors.black12,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                      child: Container(
                    color: Colors.redAccent,
                    child: Center(
                      child: Icon(Icons.fire_truck_rounded, size: 60),
                    ),
                  )),

                  Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Gap(5),
                                  Text(
                                    "Police",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Toll-free in singapore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "1800 736 20000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Toll-free in singapore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "1800 736 20000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Operanting Hours",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal, fontSize: 14),
                                  ),
                                  Text(
                                    "Monday - Friday: 9AM - 6PM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Containertest extends StatelessWidget {
  const Containertest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 180,
        height: 180,
        //alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.black12, boxShadow: [
          BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 2,
              spreadRadius: 2,
              color: Colors.black12)
        ]),

        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.contact_mail_sharp, size: 60),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white,
                    height: 150,
                    width: 200,
                  ),
                ),

                /*
                Gap(20),
                Text(
                  "Tourist HOTLINE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Gap(5),
                Text(
                  "Toll-free in singapore",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
                Text(
                  "1800 736 20000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.blue),
                ),
                Gap(5),
                Text(
                  "Toll-free in singapore",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
                Text(
                  "1800 736 20000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.blue),
                ),
                Gap(5),
                Text(
                  "Operanting Hours",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
                Text(
                  "Monday - Friday: 9AM - 6PM",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.blue),
                ),

                */
              ],
            )
          ],
        ),
      ),
    );
  }
}
