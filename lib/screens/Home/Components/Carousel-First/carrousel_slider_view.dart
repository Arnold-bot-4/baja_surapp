import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderView extends StatefulWidget {
  const CarouselSliderView({Key? key}) : super(key: key);

  @override
  State<CarouselSliderView> createState() => _CarouselSliderViewState();
}

class _CarouselSliderViewState extends State<CarouselSliderView> {
  int _currentIndex = 0;

  List<String> _bannerList = [
    'assets/images/baja.jpg',
    'assets/images/fun.png',
    'assets/images/test.jpg',
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
            return BannerCard(imageUrl: imageUrl);
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
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
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.blue
                    : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class BannerCard extends StatelessWidget {
  final String imageUrl;

  const BannerCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
