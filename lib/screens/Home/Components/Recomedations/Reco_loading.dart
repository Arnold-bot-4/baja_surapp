import 'package:baja_surapp/screens/Home/Components/TravelCategory/travel_CategoryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Travel_loadingcard.dart';


class RecoLoading extends StatelessWidget {
  const RecoLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      //width: 550,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),

        itemCount: 1,
        //itemBuilder: (context , index) =>  TravelCategoryCard(),
        itemBuilder: (context , index) => _buildShimmerCard(),
      ),
    );
  }


  Widget _buildShimmerCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 10, 0, 10),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: 340,
         // height: 240,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }





}

/*
Widget _buildShimmerCard() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(28, 10, 0, 10),
    child: Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 190,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    ),
  );
}*/

