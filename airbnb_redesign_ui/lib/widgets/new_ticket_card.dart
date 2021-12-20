
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TicketView extends StatelessWidget {
  final bool drawTriangle;
  final bool drawArc;

  final Axis triangleAxis;
  final Size triangleSize;
  final double trianglePos;

  final Color contentBackgroundColor;
  final Color backgroundColor;

  final EdgeInsets contentPadding;
  final EdgeInsets backgroundPadding;

  final double corderRadius;

  final bool drawDivider;
  final Color dividerColor;
  final double dividerStrokeWidth;

  final bool drawBorder;
  final double borderRadius;

  final bool drawShadow;

  final Widget child;

  TicketView({
    this.corderRadius = 3,
    this.drawTriangle = true,
    this.drawArc = false,
    this.triangleAxis = Axis.horizontal,
    this.triangleSize = const Size(20, 10),
    this.trianglePos = .7,
    this.contentBackgroundColor = Colors.white,
    this.backgroundColor = Colors.red,
    this.contentPadding = const EdgeInsets.all(25),
    this.backgroundPadding =
        const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
    this.drawDivider = true,
    this.dividerColor = Colors.grey,
    this.dividerStrokeWidth = 2,
    this.drawBorder = true,
    this.borderRadius = 4,
    this.drawShadow = true,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
//      foregroundPainter: TicketClipper(corderRadius, horizontal, vertical, triangleSize, trianglePos),
      painter: TicketViewPainter(
          corderRadius,
          drawTriangle,
          drawArc,
          triangleAxis,
          triangleSize,
          trianglePos,
          contentBackgroundColor,
          backgroundColor,
          contentPadding,
          backgroundPadding,
          drawDivider,
          dividerColor,
          dividerStrokeWidth,
          drawBorder,
          borderRadius,
          drawShadow),

      child: Container(
          padding: contentPadding,
          child: ClipPath(
              clipper: TicketViewClipper(drawTriangle, drawArc, triangleAxis,
                  triangleSize, trianglePos, drawDivider, borderRadius),
              child: child)),
    );
  }
}

class TicketViewPainter extends CustomPainter {
  final bool drawTriangle;
  final bool drawArc;

  final Axis triangleAxis;
  final Size triangleSize;
  final double trianglePos;

  final Color contentBackgroundColor;
  final Color backgroundColor;

  final EdgeInsets contentPadding;
  final EdgeInsets backgroundPadding;

  final double corderRadius;

  final bool drawDivider;
  final Color dividerColor;
  final double dividerStrokeWidth;

  final bool drawBorder;
  final double borderRadius;

  final bool drawShadow;

  Offset dashStart, dashEnd;

  TicketViewPainter(
    this.corderRadius,
    this.drawTriangle,
    this.drawArc,
    this.triangleAxis,
    this.triangleSize,
    this.trianglePos,
    this.contentBackgroundColor,
    this.backgroundColor,
    this.contentPadding,
    this.backgroundPadding,
    this.drawDivider,
    this.dividerColor,
    this.dividerStrokeWidth,
    this.drawBorder,
    this.borderRadius,
    this.drawShadow,
  );

  //IMPORTANT:  When you are clipping, all the polygon will be treated TicketViewPainter, Clip method will
  //close them each and then clip. Let if you have 3 polygon in your path, and you try to clip it, it will close
  // then individually and clip, if you tried to draw then will work fine.

  @override
  void paint(Canvas canvas, Size size) {
    //Get Background Rect
    Paint paint = Paint();
    paint.color = backgroundColor;
    paint.style = PaintingStyle.fill;

    RRect backgroundRect = RRect.fromLTRBR(
        0 + backgroundPadding.left,
        0 + backgroundPadding.top,
        size.width - backgroundPadding.right,
        size.height - backgroundPadding.bottom,
        Radius.circular(4));

    Path backgroundRectPath = Path();

    backgroundRectPath.addPolygon([
      Offset(backgroundRect.left, backgroundRect.top),
      Offset(backgroundRect.right, backgroundRect.top),
      Offset(backgroundRect.right, backgroundRect.bottom),
      Offset(backgroundRect.left, backgroundRect.bottom),
    ], true);

    // if (drawShadow) canvas.drawShadow(backgroundRectPath, Colors.grey, 1, true);

    canvas.drawRRect(backgroundRect, paint);

    //Get foreground Rect
    paint.color = contentBackgroundColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    Rect foregroundRect = Rect.fromLTRB(contentPadding.left, contentPadding.top,
        size.width - contentPadding.right, size.height - contentPadding.bottom);

    //Clip the triangle or Arc
    Path path = Path();

    path.moveTo(foregroundRect.left, foregroundRect.top);

    if (triangleAxis == Axis.horizontal) {
      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.left, foregroundRect.top),
          Offset(foregroundRect.right, foregroundRect.top),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);

      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.right, foregroundRect.top),
            Offset(foregroundRect.right, foregroundRect.bottom),
            borderRadius);
      else
        path.lineTo(foregroundRect.right, foregroundRect.bottom);

      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.right, foregroundRect.bottom),
          Offset(foregroundRect.left, foregroundRect.bottom),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);

      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.left, foregroundRect.bottom),
            Offset(foregroundRect.left, foregroundRect.top),
            borderRadius);
      else
        path.lineTo(foregroundRect.left, foregroundRect.top);
    } else {
      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.left, foregroundRect.top),
            Offset(foregroundRect.right, foregroundRect.top),
            borderRadius);
      else
        path.lineTo(foregroundRect.right, foregroundRect.bottom);

      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.right, foregroundRect.top),
          Offset(foregroundRect.right, foregroundRect.bottom),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);

      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.right, foregroundRect.bottom),
            Offset(foregroundRect.left, foregroundRect.bottom),
            borderRadius);
      else
        path.lineTo(foregroundRect.left, foregroundRect.top);

      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.left, foregroundRect.bottom),
          Offset(foregroundRect.left, foregroundRect.top),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);
    }

    if (drawShadow) canvas.drawShadow(path, Colors.grey, 2, true);

    canvas.clipPath(path);

    canvas.drawRect(foregroundRect, paint);

    if (drawDivider) drawDashedLine(canvas, dashStart, dashEnd);
  }

  void _addTrianglePointToPath(Rect size, Path path, Offset start, Offset end,
      double trianglePos, Size triangleSize,
      {bool isTriangle = false, bool isArc = false}) {
    if (start.dy == end.dy) {
      //Draw Horizontal Triangle

      if (end.dx > start.dx) {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(
              start.dx + (size.width * trianglePos) - triangleSize.width / 2,
              start.dy);
          path.arcToPoint(
              Offset(
                  start.dx +
                      (size.width * trianglePos) +
                      triangleSize.width / 2,
                  start.dy),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);
          _setDashPoints(Offset(start.dx + (size.width * trianglePos),
              start.dy + triangleSize.width / 2));
          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(
            start.dx + (size.width * trianglePos) - triangleSize.width / 2,
            start.dy);
        if (isTriangle)
          path.lineTo(start.dx + (size.width * trianglePos),
              start.dy + triangleSize.height);
        path.lineTo(
            start.dx + (size.width * trianglePos) + triangleSize.width / 2,
            start.dy);
        path.lineTo(end.dx, end.dy);
        _setDashPoints(Offset(start.dx + (size.width * trianglePos),
            start.dy + triangleSize.height));
      } else {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(
              end.dx + (size.width * trianglePos) + triangleSize.width / 2,
              end.dy);
          path.arcToPoint(
              Offset(
                  end.dx + (size.width * trianglePos) - triangleSize.width / 2,
                  end.dy),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);
          _setDashPoints(Offset(end.dx + (size.width * trianglePos),
              end.dy - triangleSize.height));
          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(
            end.dx + (size.width * trianglePos) + triangleSize.width / 2,
            end.dy);
        if (isTriangle)
          path.lineTo(end.dx + (size.width * trianglePos),
              end.dy - triangleSize.height);

        path.lineTo(
            end.dx + (size.width * trianglePos) - triangleSize.width / 2,
            end.dy);
        path.lineTo(end.dx, end.dy);
        _setDashPoints(Offset(
            end.dx + (size.width * trianglePos), end.dy - triangleSize.height));
      }
    } else if (start.dx == end.dx) {
      //Draw Vertical Triangle
      if (end.dy > start.dy) {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(start.dx,
              start.dy + (size.height * trianglePos) - triangleSize.width / 2);
          path.arcToPoint(
              Offset(
                  start.dx,
                  start.dy +
                      (size.height * trianglePos) +
                      triangleSize.width / 2),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);
          _setDashPoints(Offset(start.dx - triangleSize.height,
              start.dy + (size.height * trianglePos)));
          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(start.dx,
            start.dy + (size.height * trianglePos) - (triangleSize.width / 2));
        if (isTriangle)
          path.lineTo(start.dx - triangleSize.height,
              start.dy + (size.height * trianglePos));
        path.lineTo(start.dx,
            start.dy + (size.height * trianglePos) + (triangleSize.width / 2));
        path.lineTo(end.dx, end.dy);

        _setDashPoints(Offset(start.dx - triangleSize.height,
            start.dy + (size.height * trianglePos)));
      } else {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(end.dx,
              end.dy + (size.height * trianglePos) + triangleSize.width / 2);
          path.arcToPoint(
              Offset(
                  end.dx,
                  end.dy +
                      (size.height * trianglePos) -
                      triangleSize.width / 2),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);

          _setDashPoints(Offset(end.dx + triangleSize.height,
              end.dy + (size.height * trianglePos)));

          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(end.dx,
            end.dy + (size.height * trianglePos) + triangleSize.width / 2);
        if (isTriangle)
          path.lineTo(end.dx + triangleSize.height,
              end.dy + (size.height * trianglePos));
        path.lineTo(end.dx,
            end.dy + (size.height * trianglePos) - triangleSize.width / 2);
        path.lineTo(end.dx, end.dy);
        _setDashPoints(Offset(end.dx + triangleSize.height,
            end.dy + (size.height * trianglePos)));
      }
    }
  }

  void _setDashPoints(Offset offset) {
    if (dashStart == null) {
      dashStart = offset;
      return;
    }
    dashEnd = offset;
  }

  void _addArcPointToPath(
      Rect size, Path path, Offset start, Offset end, double radius) {
    if (start.dx == end.dx) {
      //Draw vertical lines

      double height = size.height.abs();
      double offsetBothSide = (height % (radius * 3)) / 2;
      int numOfArc = (height / (radius * 3)).truncate();

      if (end.dy > start.dy) {
        path.relativeLineTo(0, offsetBothSide);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(0, radius * .5);
          path.relativeArcToPoint(Offset(0, radius * 2),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(0, radius * .5);
        }
        path.relativeLineTo(0, offsetBothSide);
      } else {
        path.relativeLineTo(0, -offsetBothSide);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(0, -(radius * .5));
          path.relativeArcToPoint(Offset(0, -(radius * 2)),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(0, -(radius * .5));
        }
        path.relativeLineTo(0, -offsetBothSide);
      }
    } else if (start.dy == end.dy) {
      double width = size.width.abs();
      double offsetBothSide = (width % (radius * 3)) / 2;
      int numOfArc = (width / (radius * 3)).truncate();

      if (end.dx > start.dx) {
        path.relativeLineTo(offsetBothSide, 0);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(radius * .5, 0);
          path.relativeArcToPoint(Offset(radius * 2, 0),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(radius * .5, 0);
        }
        path.relativeLineTo(offsetBothSide, 0);
      } else {
        path.relativeLineTo(-offsetBothSide, 0);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(-(radius * .5), 0);
          path.relativeArcToPoint(Offset(-(radius * 2), 0),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(-(radius * .5), 0);
        }
        path.relativeLineTo(-offsetBothSide, 0);
      }
    }
  }

  void drawDashedLine(Canvas canvas, Offset start, Offset end) {

    Offset a,b;
    if(start.dy == end.dy){
      a = start.dx<end.dx ? start : end;
      b = start.dx>end.dx ? start : end;
    }else{
      a = start;
      b = end;
    }
    Path path = getDashedPath(a: a, b: b, gap: 4);
    // path.moveTo(start.dx, start.dy);

    Paint dashLinePaint = Paint();
    dashLinePaint.color = dividerColor;
    dashLinePaint.style = PaintingStyle.stroke;
    dashLinePaint.strokeWidth = dividerStrokeWidth;
    dashLinePaint.strokeCap = StrokeCap.round;

    // path.lineTo(end.dx, end.dy);

    canvas.drawPath(path, dashLinePaint);
  }

  Path getDashedPath({
    @required Offset a,
    @required Offset b,
    @required gap,
  }) { 
    Size size = Size(b.dx - a.dx, b.dy - a.dy); 
    Path path = Path();
    path.moveTo(a.dx, a.dy);
    bool shouldDraw = true;
    math.Point currentPoint = math.Point(a.dx, a.dy);

    num radians = math.atan(size.height / size.width);

    num dx = math.cos(radians) * gap < 0
        ? math.cos(radians) * gap * -1
        : math.cos(radians) * gap;

    num dy = math.sin(radians) * gap < 0
        ? math.sin(radians) * gap * -1
        : math.sin(radians) * gap;

    while (currentPoint.x <= b.dx && currentPoint.y <= b.dy) {
      shouldDraw
          ? path.lineTo(currentPoint.x, currentPoint.y)
          : path.moveTo(currentPoint.x, currentPoint.y);
      shouldDraw = !shouldDraw;
      currentPoint = math.Point(
        currentPoint.x + dx,
        currentPoint.y + dy,
      );
    }
    return path;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class TicketViewClipper extends CustomClipper<Path> {
  final bool drawTriangle;
  final bool drawArc;

  final Axis triangleAxis;
  final Size triangleSize;
  final double trianglePos;

  final bool drawBorder;
  final double borderRadius;

  TicketViewClipper(
    this.drawTriangle,
    this.drawArc,
    this.triangleAxis,
    this.triangleSize,
    this.trianglePos,
    this.drawBorder,
    this.borderRadius,
  );

  @override
  Path getClip(Size size) {
    Path path = Path();

    Rect foregroundRect = Rect.fromLTRB(0, 0, size.width, size.height);

    path.moveTo(foregroundRect.left, foregroundRect.top);

    if (triangleAxis == Axis.horizontal) {
      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.left, foregroundRect.top),
          Offset(foregroundRect.right, foregroundRect.top),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);

      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.right, foregroundRect.top),
            Offset(foregroundRect.right, foregroundRect.bottom),
            borderRadius);
      else
        path.lineTo(foregroundRect.right, foregroundRect.bottom);

      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.right, foregroundRect.bottom),
          Offset(foregroundRect.left, foregroundRect.bottom),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);

      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.left, foregroundRect.bottom),
            Offset(foregroundRect.left, foregroundRect.top),
            borderRadius);
      else
        path.lineTo(foregroundRect.left, foregroundRect.top);
    } else {
      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.left, foregroundRect.top),
            Offset(foregroundRect.right, foregroundRect.top),
            borderRadius);
      else
        path.lineTo(foregroundRect.right, foregroundRect.bottom);

      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.right, foregroundRect.top),
          Offset(foregroundRect.right, foregroundRect.bottom),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);

      if (drawBorder)
        _addArcPointToPath(
            foregroundRect,
            path,
            Offset(foregroundRect.right, foregroundRect.bottom),
            Offset(foregroundRect.left, foregroundRect.bottom),
            borderRadius);
      else
        path.lineTo(foregroundRect.left, foregroundRect.top);

      _addTrianglePointToPath(
          foregroundRect,
          path,
          Offset(foregroundRect.left, foregroundRect.bottom),
          Offset(foregroundRect.left, foregroundRect.top),
          trianglePos,
          triangleSize,
          isTriangle: drawTriangle,
          isArc: drawArc);
    }

    // canvas.drawShadow(path, Colors.grey, 2, true);

    // canvas.clipPath(path);

    return path;
  }

  void _addTrianglePointToPath(Rect size, Path path, Offset start, Offset end,
      double trianglePos, Size triangleSize,
      {bool isTriangle = false, bool isArc = false}) {
    if (start.dy == end.dy) {
      //Draw Horizontal Triangle

      if (end.dx > start.dx) {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(
              start.dx + (size.width * trianglePos) - triangleSize.width / 2,
              start.dy);
          path.arcToPoint(
              Offset(
                  start.dx +
                      (size.width * trianglePos) +
                      triangleSize.width / 2,
                  start.dy),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);
          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(
            start.dx + (size.width * trianglePos) - triangleSize.width / 2,
            start.dy);
        if (isTriangle)
          path.lineTo(start.dx + (size.width * trianglePos),
              start.dy + triangleSize.height);
        path.lineTo(
            start.dx + (size.width * trianglePos) + triangleSize.width / 2,
            start.dy);
        path.lineTo(end.dx, end.dy);
      } else {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(
              end.dx + (size.width * trianglePos) + triangleSize.width / 2,
              end.dy);
          path.arcToPoint(
              Offset(
                  end.dx + (size.width * trianglePos) - triangleSize.width / 2,
                  end.dy),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);
          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(
            end.dx + (size.width * trianglePos) + triangleSize.width / 2,
            end.dy);
        if (isTriangle)
          path.lineTo(end.dx + (size.width * trianglePos),
              end.dy - triangleSize.height);

        path.lineTo(
            end.dx + (size.width * trianglePos) - triangleSize.width / 2,
            end.dy);
        path.lineTo(end.dx, end.dy);
      }
    } else if (start.dx == end.dx) {
      //Draw Vertical Triangle
      if (end.dy > start.dy) {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(start.dx,
              start.dy + (size.height * trianglePos) - triangleSize.width / 2);
          path.arcToPoint(
              Offset(
                  start.dx,
                  start.dy +
                      (size.height * trianglePos) +
                      triangleSize.width / 2),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);
          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(start.dx,
            start.dy + (size.height * trianglePos) - (triangleSize.width / 2));
        if (isTriangle)
          path.lineTo(start.dx - triangleSize.height,
              start.dy + (size.height * trianglePos));
        path.lineTo(start.dx,
            start.dy + (size.height * trianglePos) + (triangleSize.width / 2));
        path.lineTo(end.dx, end.dy);
      } else {
        if (isArc) {
          path.lineTo(start.dx, start.dy);
          path.lineTo(end.dx,
              end.dy + (size.height * trianglePos) + triangleSize.width / 2);
          path.arcToPoint(
              Offset(
                  end.dx,
                  end.dy +
                      (size.height * trianglePos) -
                      triangleSize.width / 2),
              radius: Radius.circular(triangleSize.width / 2),
              clockwise: false);
          path.lineTo(end.dx, end.dy);

          return;
        }

        path.lineTo(start.dx, start.dy);
        path.lineTo(end.dx,
            end.dy + (size.height * trianglePos) + triangleSize.width / 2);
        if (isTriangle)
          path.lineTo(end.dx + triangleSize.height,
              end.dy + (size.height * trianglePos));
        path.lineTo(end.dx,
            end.dy + (size.height * trianglePos) - triangleSize.width / 2);
        path.lineTo(end.dx, end.dy);
      }
    }
  }

  void _addArcPointToPath(
      Rect size, Path path, Offset start, Offset end, double radius) {
    if (start.dx == end.dx) {
      //Draw vertical lines

      double height = size.height.abs();
      double offsetBothSide = (height % (radius * 3)) / 2;
      int numOfArc = (height / (radius * 3)).truncate();

      if (end.dy > start.dy) {
        path.relativeLineTo(0, offsetBothSide);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(0, radius * .5);
          path.relativeArcToPoint(Offset(0, radius * 2),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(0, radius * .5);
        }
        path.relativeLineTo(0, offsetBothSide);
      } else {
        path.relativeLineTo(0, -offsetBothSide);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(0, -(radius * .5));
          path.relativeArcToPoint(Offset(0, -(radius * 2)),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(0, -(radius * .5));
        }
        path.relativeLineTo(0, -offsetBothSide);
      }
    } else if (start.dy == end.dy) {
      double width = size.width.abs();
      double offsetBothSide = (width % (radius * 3)) / 2;
      int numOfArc = (width / (radius * 3)).truncate();

      if (end.dx > start.dx) {
        path.relativeLineTo(offsetBothSide, 0);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(radius * .5, 0);
          path.relativeArcToPoint(Offset(radius * 2, 0),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(radius * .5, 0);
        }
        path.relativeLineTo(offsetBothSide, 0);
      } else {
        path.relativeLineTo(-offsetBothSide, 0);
        for (int i = 0; numOfArc > i; i++) {
          path.relativeLineTo(-(radius * .5), 0);
          path.relativeArcToPoint(Offset(-(radius * 2), 0),
              radius: Radius.circular(radius), clockwise: false);
          path.relativeLineTo(-(radius * .5), 0);
        }
        path.relativeLineTo(-offsetBothSide, 0);
      }
    }
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

