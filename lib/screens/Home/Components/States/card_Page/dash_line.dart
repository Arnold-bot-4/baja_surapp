import 'package:flutter/cupertino.dart';



class DashedLine extends StatelessWidget {
  final double height;
  final Color color;

  const DashedLine({Key? key, required this.height, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 20,
      height: height,
      //alignment: Alignment.center,
      child: CustomPaint(
        painter: _DashedLinePainter(color: color),
        //size: Size(double.infinity, height),
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;

  _DashedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    final dashWidth = 5;
    final dashSpace = 5;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(_DashedLinePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(_DashedLinePainter oldDelegate) => false;
}
