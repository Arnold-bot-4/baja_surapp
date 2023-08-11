import 'package:baja_surapp/screens/Home/Components/TravelCategory/travel_CategoryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Travel_loadingcard.dart';
import '../Recomedations/List_screen.dart';
import '../States/card_Page/card_page.dart';
import 'TravelCarpet/Events/event_Main.dart';
import 'TravelCarpet/Guide/guide_Main.dart';
import 'TravelCarpet/News/NewsMain.dart';


class TravelLoading extends StatelessWidget {
   TravelLoading({Key? key}) : super(key: key);

  final url =('https://qfreeaccountssjc1.az1.qualtrics.com/jfe/form/SV_exiJzfIkfZlzwea');


   void _launchURL() async =>
       await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context , index) => Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EventMain(),
                ));

              },


              child: TravelCategoryCard(text: "Events",),
            ),

            GestureDetector(
              onTap: (){
                final webSiteUr = Uri.parse('https://qfreeaccountssjc1.az1.qualtrics.com/jfe/form/SV_exiJzfIkfZlzwea');
                launchUrl(webSiteUr);
              },
              child: TravelCategoryCard(text: "Guide",),
            ),

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsMain(),
                )
                );
              },
              child: TravelCategoryCard(text: "News Local",),
            ),

            TravelCategoryCard(text: "Events 2",),
          ],
        )
      ),
    );
  }
}
