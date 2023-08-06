import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gap/gap.dart';

class CouponsMain extends StatelessWidget {
  const CouponsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 310,
                  height: 50,
                  color: Colors.black12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 2,
                          child: Center(
                            child: Container(
                              color: Colors.green,

                        child: Text("Todo"),
                      ),
                          )),
                      Expanded(
                        flex: 2,
                          child: Center(
                            child: Container(
                              color: Colors.cyanAccent,
                        child: Text("Visitado"),
                      ),
                          )),
                      Expanded(
                        flex: 2,

                          child: Center(
                            child: Container(
                              color: Colors.orange,
                        child: Text("Preferido"),
                      ),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 320,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: ClipPath(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      topLeft: Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all()),
                              child: Center(
                                /*   child: Text(
                                  "30 %",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),*/
                                child: Image.asset(
                                  'assets/images/walmart.png',
                                  width: 100,
                                ),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    color: Colors.black12)
                              ],
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Gap(2),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0),
                                    child: Text(
                                      "Walmart",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Supermercado",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.add_card,
                                        color: Colors.green,
                                        size: 15,
                                      ),
                                      Text("5"),
                                      Gap(55),
                                    ],
                                  ),
                                  //Text("Expired 5 days | "),
                                  Gap(5),
                                  Text(
                                    "5.5 % OFF",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
