import 'package:flutter/cupertino.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image.asset("assets/images/baja.jpg",fit: BoxFit.cover,width: double.infinity,),
      ),
    );
  }
}
