import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_styles.dart';
import 'card_Page/card_page.dart';

class StateSliderView extends StatefulWidget {
  const StateSliderView({Key? key}) : super(key: key);

  @override
  State<StateSliderView> createState() => _StateSliderViewState();
}

class _StateSliderViewState extends State<StateSliderView> {
  int _currentIndex = 0;
  double _pageOffset = 0.0;

  List<String> _bannerList = [
    'assets/images/baja.jpg',
    'assets/images/cabos.jpg',
    'assets/images/paz.jpg',
    'assets/images/paz.jpg',
    'assets/images/paz.jpg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _bannerList.map((imageUrl) {
            String cityName = _getCityName(imageUrl);
            return BannerCard(imageUrl: imageUrl , text: cityName, );
          }).toList(),

          options: CarouselOptions(

            height: 400,
            autoPlay: false,
            enableInfiniteScroll: false,
            reverse: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            viewportFraction: 0.7,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _bannerList.map((imageUrl) {
            int index = _bannerList.indexOf(imageUrl);
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
             /* decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.blue
                    : Colors.grey,
              ),*/
            );
          }).toList(),
        ),
      ],
    );
  }
}


class BannerCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const BannerCard({Key? key, required this.imageUrl, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CardPage(),
          )
        );
      },


      child: Container(
      margin: const EdgeInsets.all(10),
      height: 200,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent,Colors.black54,Colors.black54,Colors.black54, Colors.transparent],
                stops: [0.0, 0.4,0.5,0.6, 1.0],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                text,
                style: Styles.latoBold,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}

String _getCityName(String imageUrl){
  if(imageUrl == 'assets/images/baja.jpg'){
    return 'La Paz';
  } else if (imageUrl == 'assets/images/cabos.jpg'){
    return 'Los Cabos';
  }
  else if (imageUrl == 'assets/images/paz.jpg'){
    return 'Loreto';
  }
  else {
    return '';
  }
}

