import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neumorphic_dashboard/config/colors.dart';
import 'package:neumorphic_dashboard/config/size.dart';
import 'package:neumorphic_dashboard/config/strings.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0),
      child: Container(
        height: SizeConfig.getWidth(context) * 0.45,
        width: SizeConfig.getWidth(context) * 0.45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: AppColors.neumorpShadow,
            color: AppColors.primaryWhite),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: AppColors.neumorpShadow,
                    color: AppColors.primaryWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width * 0.5, size.height * 0.5);
    double radius = min(size.width * 0.5, size.height * 0.5);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    double total = 0;
    category.forEach((element) {
      total += element['amount'];
    });
    double startRadian = -pi / 2;
    for (int i = 0; i < category.length; i++) {
      final currentExpense = category[i];
      final sweepRadian = (currentExpense['amount'] / total) * 2 * pi;
      paint.color = AppColors.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
