
import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  final Color color;
  ArrowPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color =  color
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(size.width * 0.5, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}