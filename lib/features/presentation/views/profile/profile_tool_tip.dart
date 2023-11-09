import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';

void profileToolTip(BuildContext context,containerKey,{required String label,required int percent}) {
  final RenderBox renderBox = containerKey.currentContext.findRenderObject();
  final size = renderBox.size;
  final offset = renderBox.localToGlobal(Offset.zero);

  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      left: offset.dx + size.width / 2 - 80, // Center the tooltip
      top: offset.dy + 30, // Show under the container
      child: Material(
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.topCenter, // لتوسيط المثلث فوق الـ Container
          children: <Widget>[
            Positioned(
              top: 0, // لتحديد موضع المثلث
              child: CustomPaint(
                painter: TrianglePainter(color: Theme.of(context).focusColor), // رسم المثلث
                size: Size(20, 10), // حجم المثلث
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5), // البدء من تحت المثلث مباشرة
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "$label :  %$percent",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: FontSize.s12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  // Remove the overlay after 2 seconds
  Future.delayed(Duration(seconds: 1), () => overlayEntry.remove());
}
class TrianglePainter extends CustomPainter {
  final Color color;
  TrianglePainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color // لون المثلث
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width / 2, 0); // رأس المثلث
    path.lineTo(0, size.height); // الركن السفلي الأيسر
    path.lineTo(size.width, size.height); // الركن السفلي الأيمن
    path.close(); // يغلق الشكل

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}