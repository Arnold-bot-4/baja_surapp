import 'package:baja_surapp/screens/Home/Components/TravelCategory/travel_CategoryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Travel_loadingcard.dart';
import '../Recomedations/List_screen.dart';
import '../States/card_Page/card_page.dart';
import 'TravelCarpet/Events/event_Main.dart';
import 'TravelCarpet/Guide/guide_Main.dart';


class TravelLoading extends StatelessWidget {
  const TravelLoading({Key? key}) : super(key: key);

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
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => guideMain(),
                ));
              },
              child: TravelCategoryCard(text: "Guide",),
            ),

            TravelCategoryCard(text: "Crime",),
            TravelCategoryCard(text: "Events 2",),
          ],
        )
      ),
    );
  }
}
