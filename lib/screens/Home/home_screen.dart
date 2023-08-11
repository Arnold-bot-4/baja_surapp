import 'package:baja_surapp/screens/Home/Components/Recomedations/Reco_CategoryCard.dart';
import 'package:baja_surapp/screens/Home/Components/TravelCategory/Travel_loading.dart';

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/app_styles.dart';
import '../../widgets/double_text_widget.dart';


import 'Components/Bar/ScrollableAppBar.dart';
import 'Components/Carousel-First/carrousel_slider_view.dart';
import 'Components/Recomedations/Reco_loading.dart';
import 'Components/States/state_slider_view.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //ScrollableAppBar(),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blueAccent.withOpacity(0.6),
                  Colors.blueAccent.withOpacity(0.3),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [ BoxShadow(
                color: Colors.blueAccent.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 10,
              )
               ],
            ),

            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.grey[300]!,
              child: Text(
                "Discover Baja",
                style: Styles.textStyle28.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),



          ),

          const CarouselSliderView(),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child:Text("Travelling to States" , style: Styles.robotoMedium,) ,
              )
            ],),
          const Gap(20),
          const StateSliderView(),
          const Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: DoubleTextWidget(bigText: 'Services', smallText: "View All"),
          ),
         /* Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text("bigText" , style: Styles.textStyle26,) ,
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeEssentials()
                ),
              );
            },
            child: Text("smallText" , style: Styles.textStyle16b ) ,
          )


        ],
      ),*/
          Container(

            //color: Colors.grey[200],
            child: GridView.count(
              shrinkWrap: true,
              padding: EdgeInsets.all(23),
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 21,
              crossAxisSpacing: 30,
              children: [
                GestureDetector(
                  onTap: (){
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Caja Presionada'),
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Page2()
                      ),
                    );
                  },
                  child: _buildBox('Medicare Care', Icons.medical_services , Styles.purpleBox , Colors.lightBlueAccent),
                ),
                _buildBox('Education', Icons.school, Styles.greenBox ,Colors.lightGreen ),
                _buildBox('Security', Icons.security,Styles.yellowBox , Colors.lime),
                _buildBox('Security', Icons.local_offer, Styles.greyBox , Colors.orangeAccent),

              ],
            ),
          ), // cuadros
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child:Text("Our Recomedations" , style: Styles.robotoMedium,) ,
              )
            ],),
          const Gap(5),
          const RecoCategoryCard(),
         // const RecoLoading(),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child:Text("Travelling to Baja" , style: Styles.robotoMedium,) ,
              )
            ],),

           TravelLoading(),
          // Other widgets specific to Home screen
        ],
      ),
    );
  }

   // Box Main SERVICES
  Widget _buildBox(String title, IconData icon , Color iconColor , Color colorbox) {

    List<Color> customColors = [
      colorbox.withOpacity(0.5),
      colorbox.withOpacity(0.7),
      colorbox.withOpacity(0.8),
      colorbox.withOpacity(0.9),
    ];


    return
      Container(
        decoration: BoxDecoration(
          color: iconColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: -5, // -2
              blurRadius: 25, // 4
              offset: Offset(0, 20), // 3
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: customColors,
            stops: const [
              0.1,
              0.6,
              0.9,
              1.0
            ]
          )
        ),
        child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20.0,right: 90,top: 25,bottom:15),
                child: Icon(icon, size: 35,color: Colors.black54),
              ),
              SizedBox(
                width: 100,
                child: Text(title,style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
        ),
        /* child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              padding: const EdgeInsets.only(left: 20.0,right: 100,bottom:45),
              child: Icon(icon, size: 35,color: Colors.black54),
            ),
            //Gap(25),
            //Icon(icon, size: 35,color: Colors.black54),
            Gap(1),
            Container(
              padding: const EdgeInsets.only(bottom:15),
              child:Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),



          ],
        ),*/

      );
  }




}

class Page2 extends StatelessWidget{

  Widget _buildBox(String title, IconData icon) {
    return
      Container(
        margin: EdgeInsets.all(17),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon,
                size: 35,
                color: Colors.blueAccent,
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: Text("Documents"),

        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),

      body:
      GridView.count(
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        shrinkWrap: true,
        padding: EdgeInsets.all(20),
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: (1/.35),
        crossAxisCount: 1,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Show_Info()
                ),
              );
            },
            child: _buildBox('Medicare Care', Icons.medical_services),
          ),
          _buildBox('Education', Icons.school),
          _buildBox('Security', Icons.security),
        ],
      ),



    );
  }
}


class Show_Info extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(title: Text("Medical Care"),),

        body: SingleChildScrollView(

          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/baja.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),),
              Text(
                "¿Dónde saco mi cita?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "El sitio donde podrás acceder al sistema de las citas es el siguiente: regularizaauto.sspc.gob.mx",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        )
    );

  }


}