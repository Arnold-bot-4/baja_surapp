import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'card_images.dart';
import 'card_reco.dart';
import 'citys_details.dart';
import 'dash_line.dart';
// Adapted from offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/bottom_app_bar_demo.dart
class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<StatefulWidget> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),

        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 280.0,
            
            //elevation: 10,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("FlexibleSpace titles"),

              background: Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30)),
                gradient: LinearGradient(
                  colors: [Colors.white , Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
                ),
                child:
                           Image.asset(
                          'assets/images/baja.jpg',
                          fit: BoxFit.cover,
                        ),

              )
            

              
            ),

          ),
          // If the main content is a list, use SliverList instead.
          //SliverPadding(padding: EdgeInsets.only(top: 8 ,bottom: 24)),
          /* SliverFillRemaining(
            child: SingleChildScrollView(
              //physics: NeverScrollableScrollPhysics(),

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24 , vertical: 24),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: 260,
                      //color: Colors.black12,
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10 , right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  FeaturesTile(icon: Icon(Icons.people , color:Color(0xff5A6C64)), label: "Population: 25,0000"),
                                  FeaturesTile(icon: Icon(Icons.beach_access , color:Color(0xff5A6C64)), label: "Sand Beach",),
                                  FeaturesTile(icon: Icon(Icons.card_travel , color:Color(0xff5A6C64)), label: "First Coastline"),
                                  FeaturesTile(icon: Icon(Icons.local_drink , color:Color(0xff5A6C64)), label: "bar and Resturant"),
                                ],
                              )
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 24),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [DetailsCard(title: "Hola", noOfReviews: "Relegular", rating: 2.0,), DetailsCard(title: "Mamona", noOfReviews: "Relegular", rating: 2.0,)],
                            ),
                          ),




                        ],
                      ),
                    ),


                    Text("Datas"),
                    Gap(10),
                    Text("La Paz is a popular tourist destination offering a combination of natural beauty, cultural attractions, and a vibrant seaside atmosphere. Visitors can enjoy strolling along the picturesque malecón, exploring the historic city center with its charming gardens and the impressive cathedral. The Whale Museum provides an opportunity to learn about the fascinating marine life of the region, particularly the majestic gray whales.")
                  ],
                ),
              )
            ),
          ),*/
          SliverToBoxAdapter(
              child: BodyTesting(),
          )


        ],
      ),

    );
  }

  /*Widget _getBottomAppBar() {
    return BottomAppBar(
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text('pinned'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._pinned = val;
                  });
                },
                value: this._pinned,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Text('snap'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._snap = val;
                    // **Snapping only applies when the app bar is floating.**
                    this._floating = this._floating || val;
                  });
                },
                value: this._snap,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Text('floating'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._floating = val;
                    if (this._snap == true) {
                      if (this._floating != true) {
                        this._snap = false;
                      }
                    }
                  });
                },
                value: this._floating,
              ),
            ],
          ),
        ],
      ),
    );
  }

  */

}

class BodyTesting extends StatelessWidget{
  const BodyTesting({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 24 , vertical: 24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 260,
                //color: Colors.black12,
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 10 , right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FeaturesTile(icon: Icon(Icons.people , color:Color(0xff5A6C64)), label: "Population 25,0000"),
                            FeaturesTile(icon: Icon(Icons.beach_access , color:Color(0xff5A6C64)), label: "Sand Beach",),
                            FeaturesTile(icon: Icon(Icons.card_travel , color:Color(0xff5A6C64)), label: "First Coastline"),
                            FeaturesTile(icon: Icon(Icons.local_drink , color:Color(0xff5A6C64)), label: "bar and Resturant"),
                          ],
                        )
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 24),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [DetailsCard(title: "Hola", noOfReviews: "Relegular", rating: 2.0,), DetailsCard(title: "Mamona", noOfReviews: "Relegular", rating: 2.0,)],
                      ),
                    ),




                  ],
                ),),

             // Text("About"),
              Gap(10),
              Text("La Paz is a popular tourist destination offering a combination of natural beauty, cultural attractions, and a vibrant seaside atmosphere. Visitors can enjoy strolling along the picturesque malecón, exploring the historic city center with its charming gardens and the impressive cathedral."),
              Gap(10),
              Text("Comunny Hobby"),
              Gap(10),
              CityDetailsPage(),
              Gap(10),
/*
              Container(
                height: 15,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: DashedLine(height: 30, color: Colors.red),
                    ),
                  ],
                ),
              ),
*/
              Align(
                alignment: Alignment.center,
                child:DashedLine(height: 30, color: Colors.red) ,
              ),


              CardReco(),
              CardReco(),
              Gap(40),
              Text("Comunny Hobby"),
              Gap(10),
              ImageCard(),



            ],
          ),

    );
  }


}


class DetailsCard extends StatelessWidget {
  final String title;
  final String noOfReviews;
  final double rating;
  DetailsCard({required this.rating, required this.title, required this.noOfReviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                    borderRadius: BorderRadius.circular(10)),
               /* child: Image.asset(
                  "assets/card1.png",
                  height: 30,
                ), */
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A6C64)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "8.0/10",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A6C64)),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            " Based on 30 reviews",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff879D95)),
          ),
        ],
      ),
    );
  }
}



class FeaturesTile extends StatelessWidget {
  final Icon icon;
  final String label;
  FeaturesTile({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff5A6C64).withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(40)),
              child: icon,
            ),
            SizedBox(
              height: 9,
            ),
            Container(
                width: 70,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5A6C64)),
                ))
          ],
        ),
      ),
    );
  }
}