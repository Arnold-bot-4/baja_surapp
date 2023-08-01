import 'package:baja_surapp/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TravelCategoryCard extends StatelessWidget {

  final String text;

  const TravelCategoryCard({Key? key , required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(28, 10, 0, 10),
      child: Material(
        elevation: 8,
        shadowColor: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
              width: 190,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    //color: Colors.black.withOpacity(0.6),
                   // blurRadius: 15,
                    //spreadRadius: 1,
                   // offset: Offset(0, 15),
                  ),
                ],

                image: DecorationImage(
                  image: AssetImage('assets/images/baja.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 69, // Ajusta la posición vertical del contenedor de texto
              left: 0,
              right:0,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  //wcolor: Colors.black.withOpacity(0.4),

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13),
                    ),

                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    //stops: [0.0 , 0.2 , 0.5 , 1.0],
                    colors: [
                      Colors.black.withOpacity(0.7),
                     /* Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.2),*/
                     // Colors.black.withOpacity(0),
                      Colors.transparent,
                    ]
                  )

                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


