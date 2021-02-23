import 'dart:ui';

import 'package:flutter/material.dart';

class GlassCircle extends StatefulWidget {
  double blurStrengthX;
  double blurStrengthY;
  double colorOpacity;
  Color color;
  double radius;
  Widget child;
  BoxBorder border;

  GlassCircle({
    this.child,
    this.colorOpacity,
    this.border,
    this.radius,
    this.blurStrengthX,
    this.blurStrengthY,
    this.color,
  });
  @override
  _GlassButtonState createState() => _GlassButtonState();
}

class _GlassButtonState extends State<GlassCircle> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(
          widget.radius ?? MediaQuery.of(context).size.shortestSide / 2)),
      child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: widget.blurStrengthX ?? 10,
            sigmaY: widget.blurStrengthY ?? 10,
          ),
          child: AnimatedContainer(
            height:
                widget.radius ?? MediaQuery.of(context).size.shortestSide / 2,
            width:
                widget.radius ?? MediaQuery.of(context).size.shortestSide / 2,
            duration: kThemeChangeDuration,
            decoration: BoxDecoration(
              border: widget.border,
              color: widget.color == null
                  ? Colors.transparent
                  : widget.color.withOpacity(widget.colorOpacity ?? 0.2),
              shape: BoxShape.circle,
            ),
            child: widget.child,
          )),
    );
  }
}
