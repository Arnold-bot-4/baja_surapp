
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TravelScreen extends StatelessWidget {
  const TravelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/baja.jpg',
      'assets/images/fun.png',
      'assets/images/test.jpg',
    ];

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width/2,
      //padding: EdgeInsets.all(40),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 155,

          aspectRatio: 16/9,
          viewportFraction: 0.5,
          initialPage: 0,
          reverse: false,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: images.map((image) {
          return Builder(
            builder: (BuildContext context) {

              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(

                  image,
                  fit: BoxFit.cover,
                ),
              );
              return GestureDetector(
                onTap: (){},
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          margin: EdgeInsets.only(bottom:40),
                          child: Image.asset(image,fit: BoxFit.cover,),
                        )
                      ],
                    ),
                  ),
                )
                ,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
