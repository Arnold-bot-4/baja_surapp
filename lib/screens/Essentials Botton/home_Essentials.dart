import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_styles.dart';
import 'Components/essential_Grid.dart';
import 'Essentials Buttons/Contacts/emergencyContact_Main.dart';
import 'Essentials Buttons/Tools/currencyMoney_Main.dart';
import 'Essentials Buttons/Tools/usefulapp_Main.dart';

class HomeEssentials extends StatelessWidget {
  const HomeEssentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25, top: 50),
              child: Text(
                "Essentials",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),

        Center(
          child: Container(
            width: 300,
            margin: EdgeInsets.only(top: 20, right: 25),
            child: Text(
              "Find all essential information about your trip to BCS here.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Gap(10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 34),
              child: Text(
                "Services",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

        Gap(10),

        /// Columna de Datos
        Column(
          children: [
            Material(
              child: InkWell(
                  hoverColor: Colors.orange,
                  splashColor: Colors.red,
                  focusColor: Colors.yellow,
                  highlightColor: Colors.purple,
                  onTap: () {
                    Future.delayed(Duration(milliseconds: 350), () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Show_Info(),
                        ),
                      );
                    });
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(
                              10)), // Agregar un radio de borde de 10
                    ),
                    child: Container(
                      width: 325,
                      height: 50,
                      /*
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.red,
                    ),
                    */

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(Icons.local_hospital_outlined),
                                  Gap(12),
                                  Text("Medicare Care"),
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_right_outlined,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            //yest
            Container(
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
                      child: Row(
                        children: [
                          Icon(Icons.school),
                          Gap(12),
                          Text("Education"),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            Gap(0.1),
            Container(
              width: 325,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.security),
                        Gap(12),
                        Text("Security")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        /// Segunda Columna de Datos
        Gap(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 34),
              child: Text("Important Contacts",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ],
        ),

        Gap(10),
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EmergencyContactMain(),
                  ),
                );
              },
              child: Container(
                width: 325,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.contacts_outlined),
                          Gap(12),
                          Text("Emergency contact")
                        ],
                      ),
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
            ),
            EmergencyContactMain(),
            Gap(0.1),
            Container(
              width: 325,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.security),
                        Gap(12),
                        Text("Security")
                      ],
                    ),
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
          ],
        ),

        /// Tools
        ///
        Gap(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 34),
              child: Text("Tools",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ],
        ),

        Gap(10),
        Column(
          children: [
            Material(
              child: InkWell(
                hoverColor: Colors.orange,
                splashColor: Colors.red,
                focusColor: Colors.yellow,
                highlightColor: Colors.purple,
                onTap: () {
                  Future.delayed(Duration(milliseconds: 350), () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CurrencyMoney(),
                      ),
                    );
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(
                            10)), // Agregar un radio de borde de 10
                  ),
                  child: Container(
                    width: 325,
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(Icons.monetization_on),
                              Gap(12),
                              Text("Currency converter")
                            ],
                          ),
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
                ),
              ),
            ),
            Gap(0.1),
            Material(
              child: InkWell(
                hoverColor: Colors.orange,
                splashColor: Colors.red,
                focusColor: Colors.yellow,
                highlightColor: Colors.purple,
                onTap: () {
                  Future.delayed(Duration(milliseconds: 350), () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UsefulAppMain(),
                      ),
                    );
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(
                            10)), // Agregar un radio de borde de 10
                  ),
                  child: Container(
                    width: 325,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(Icons.get_app),
                              Gap(12),
                              Text("Useful apps")
                            ],
                          ),
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
                ),
              ),
            ),
            Gap(10),
          ],
        ),
      ],
    ));
  }
}
