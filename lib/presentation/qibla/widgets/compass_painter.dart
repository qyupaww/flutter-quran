import 'dart:math';
import 'package:flutter/material.dart';

class CompassPainter extends CustomPainter {
  final double heading;
  final double qiblaDirection;
  final bool isDark;

  CompassPainter({
    required this.heading,
    required this.qiblaDirection,
    this.isDark = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 16;

    // Rotate canvas by negative heading so North always corresponds to heading
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(-heading * pi / 180);

    // --- Outer ring ---
    final outerRingPaint = Paint()
      ..color = isDark ? const Color(0xff2A2D35) : const Color(0xffF0F4FF)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset.zero, radius, outerRingPaint);

    final outerBorderPaint = Paint()
      ..color = isDark ? const Color(0xff3D4250) : const Color(0xffD0D8F0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawCircle(Offset.zero, radius, outerBorderPaint);

    // --- Inner circle ---
    final innerRadius = radius * 0.78;
    final innerPaint = Paint()
      ..color = isDark ? const Color(0xff1E2028) : Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset.zero, innerRadius, innerPaint);

    final innerBorderPaint = Paint()
      ..color = isDark ? const Color(0xff3D4250) : const Color(0xffE0E6F5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(Offset.zero, innerRadius, innerBorderPaint);

    // --- Degree tick marks ---
    for (int i = 0; i < 360; i += 5) {
      final angle = i * pi / 180;
      final isCardinal = i % 90 == 0;
      final isMajor = i % 30 == 0;
      final isMinor = i % 10 == 0;

      double startR;
      double endR = radius;
      double strokeWidth;
      Color tickColor;

      if (isCardinal) {
        startR = radius - 22;
        strokeWidth = 2.5;
        tickColor = isDark ? const Color(0xff8BA0D0) : const Color(0xff3B5998);
      } else if (isMajor) {
        startR = radius - 16;
        strokeWidth = 1.5;
        tickColor = isDark ? const Color(0xff6D7A99) : const Color(0xff7A8AB5);
      } else if (isMinor) {
        startR = radius - 10;
        strokeWidth = 1;
        tickColor = isDark ? const Color(0xff4D5568) : const Color(0xffA0ACC5);
      } else {
        startR = radius - 6;
        strokeWidth = 0.5;
        tickColor = isDark ? const Color(0xff3D4555) : const Color(0xffC5CDDE);
      }

      final tickPaint = Paint()
        ..color = tickColor
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round;

      final p1 =
          Offset(startR * cos(angle - pi / 2), startR * sin(angle - pi / 2));
      final p2 = Offset(endR * cos(angle - pi / 2), endR * sin(angle - pi / 2));
      canvas.drawLine(p1, p2, tickPaint);
    }

    // --- Cardinal direction labels ---
    final cardinals = ['N', 'E', 'S', 'W'];
    final cardinalColors = [
      const Color(0xffE74C3C), // N = red
      isDark ? Colors.white70 : const Color(0xff3B5998),
      isDark ? Colors.white70 : const Color(0xff3B5998),
      isDark ? Colors.white70 : const Color(0xff3B5998),
    ];

    for (int i = 0; i < 4; i++) {
      final angle = i * 90 * pi / 180;
      final labelR = radius - 36;
      final x = labelR * cos(angle - pi / 2);
      final y = labelR * sin(angle - pi / 2);

      final textPainter = TextPainter(
        text: TextSpan(
          text: cardinals[i],
          style: TextStyle(
            color: cardinalColors[i],
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();

      canvas.save();
      canvas.translate(x, y);
      canvas.rotate(i * 90 * pi / 180); // Counter-rotate labels
      textPainter.paint(
        canvas,
        Offset(-textPainter.width / 2, -textPainter.height / 2),
      );
      canvas.restore();
    }

    // --- Degree numbers at 30° intervals ---
    for (int deg = 0; deg < 360; deg += 30) {
      if (deg % 90 == 0) continue; // Skip cardinal positions
      final angle = deg * pi / 180;
      final labelR = radius - 36;
      final x = labelR * cos(angle - pi / 2);
      final y = labelR * sin(angle - pi / 2);

      final textPainter = TextPainter(
        text: TextSpan(
          text: '$deg°',
          style: TextStyle(
            color: isDark ? const Color(0xff7A8599) : const Color(0xff8899B5),
            fontSize: 11,
            fontFamily: 'Poppins',
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();

      canvas.save();
      canvas.translate(x, y);
      canvas.rotate(deg * pi / 180);
      textPainter.paint(
        canvas,
        Offset(-textPainter.width / 2, -textPainter.height / 2),
      );
      canvas.restore();
    }

    // --- Qibla direction indicator ---
    _drawQiblaIndicator(canvas, qiblaDirection, innerRadius);

    // --- North pointer (small red triangle at top) ---
    _drawNorthPointer(canvas, innerRadius);

    canvas.restore();
  }

  void _drawQiblaIndicator(Canvas canvas, double qiblaDeg, double innerRadius) {
    final angle = qiblaDeg * pi / 180 - pi / 2;
    final indicatorRadius = innerRadius * 0.65;

    // Line from center to Qibla direction
    final linePaint = Paint()
      ..color = const Color(0xff1B7D3A)
      ..strokeWidth = 2.5
      ..strokeCap = StrokeCap.round;

    final endPoint = Offset(
      indicatorRadius * cos(angle),
      indicatorRadius * sin(angle),
    );
    canvas.drawLine(Offset.zero, endPoint, linePaint);

    // Qibla icon circle at the end
    final iconCenter = Offset(
      (innerRadius * 0.80) * cos(angle),
      (innerRadius * 0.80) * sin(angle),
    );

    // Glow effect
    final glowPaint = Paint()
      ..color = const Color(0xff1B7D3A).withValues(alpha: 0.2)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(iconCenter, 24, glowPaint);

    // Circle background
    final bgPaint = Paint()
      ..color = const Color(0xff1B7D3A)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(iconCenter, 18, bgPaint);

    // Ka'bah symbol (simple square rotated 45°)
    canvas.save();
    canvas.translate(iconCenter.dx, iconCenter.dy);
    canvas.rotate(qiblaDeg * pi / 180); // Rotate with compass
    final kaabaPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    const kaabaSize = 9.0;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
            center: Offset.zero, width: kaabaSize, height: kaabaSize),
        const Radius.circular(1.5),
      ),
      kaabaPaint,
    );
    // Small diamond on top (door)
    final doorPaint = Paint()
      ..color = const Color(0xff1B7D3A)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(const Offset(0, -2), 2, doorPaint);
    canvas.restore();
  }

  void _drawNorthPointer(Canvas canvas, double innerRadius) {
    final pointerLength = innerRadius * 0.55;

    // Red triangle pointing North
    final northPath = Path();
    northPath.moveTo(0, -pointerLength);
    northPath.lineTo(-6, -pointerLength + 20);
    northPath.lineTo(6, -pointerLength + 20);
    northPath.close();

    final northPaint = Paint()
      ..color = const Color(0xffE74C3C)
      ..style = PaintingStyle.fill;
    canvas.drawPath(northPath, northPaint);

    // South triangle (lighter)
    final southPath = Path();
    southPath.moveTo(0, pointerLength);
    southPath.lineTo(-6, pointerLength - 20);
    southPath.lineTo(6, pointerLength - 20);
    southPath.close();

    final southPaint = Paint()
      ..color = isDark ? const Color(0xff4A5066) : const Color(0xffB0BAD0)
      ..style = PaintingStyle.fill;
    canvas.drawPath(southPath, southPaint);

    // Center dot
    final centerPaint = Paint()
      ..color = isDark ? const Color(0xff3D4250) : const Color(0xffE0E6F5)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset.zero, 8, centerPaint);

    final centerDot = Paint()
      ..color = const Color(0xffE74C3C)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset.zero, 4, centerDot);
  }

  @override
  bool shouldRepaint(covariant CompassPainter oldDelegate) {
    return oldDelegate.heading != heading ||
        oldDelegate.qiblaDirection != qiblaDirection ||
        oldDelegate.isDark != isDark;
  }
}
