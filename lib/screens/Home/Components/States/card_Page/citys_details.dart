import 'package:flutter/material.dart';

class CityDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.lightBlueAccent,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://picsum.photos/500/500?random=1',
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Text(
                'Malecon',
                style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,

                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 13,
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
