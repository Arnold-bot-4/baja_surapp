import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/app_styles.dart';
import '../../../utils/app_styles.dart';
import '../Bottons/ContactsBotton/contacts_Svg.dart';

class EssentialGrid extends StatelessWidget {
  const EssentialGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackgroundPainter(),
      child: Padding(
        padding: const EdgeInsets.only(top: 100), // Ajusta el valor del top según tus necesidades
        child: GridView.count(
          shrinkWrap: true,
          padding: EdgeInsets.all(26),
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 21,
          crossAxisSpacing: 30,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ),
                );
              },
              child: _buildBox('Medicare Care', Icons.medical_services, Styles.purpleBox),
            ),
            _buildBox('Education', Icons.school, Styles.greenBox),
            _buildBox('Security', Icons.security, Styles.yellowBox),
            _buildBox('Useful Tips', Icons.local_offer, Styles.greyBox),
            _buildBox('Security', Icons.security, Styles.yellowBox),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SelectableMap(),
                  ),
                );
              },
              child: _buildBox('Contacts', Icons.local_offer, Styles.greyBox),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(String title, IconData icon, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        color: iconColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 90, top: 25, bottom: 15),
              child: Icon(icon, size: 35, color: Colors.black54),
            ),
            SizedBox(
              width: 100,
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
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    final paint = Paint()
      ..style = PaintingStyle.fill;

    // Zona azul en la parte superior
    final bluePath = Path()
      ..moveTo(0, 0)
      ..lineTo(width, 0)
      ..lineTo(width, height * 0.5)
      ..quadraticBezierTo(width / 2, height * 0.65, 0, height * 0.5)
      ..close();

    paint.color = Colors.blue.shade300;
    canvas.drawPath(bluePath, paint);

    // Zona blanca en la parte inferior
    final whitePath = Path()
      ..moveTo(0, height * 0.3)
      ..quadraticBezierTo(width / 2, height * 0.45, width, height * 0.3)
      ..lineTo(width, height)
      ..lineTo(0, height)
      ..close();

    paint.color = Colors.white;
    canvas.drawPath(whitePath, paint);
  }

  @override
  bool shouldRepaint(BackgroundPainter oldDelegate) => false;
}

class Page2 extends StatelessWidget {
  Widget _buildBox(String title, IconData icon) {
    return Container(
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Documents"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: GridView.count(
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        shrinkWrap: true,
        padding: EdgeInsets.all(20),
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: (1 / 0.35),
        crossAxisCount: 1,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Show_Info(),
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

class Show_Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("TEST"),
      ),
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
              ),
            ),
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
      ),
    );
  }
}
