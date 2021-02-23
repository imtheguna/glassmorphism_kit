import 'dart:ui';

import 'package:flutter/material.dart';

class GlassDrawer extends StatefulWidget {
  double blurStrengthX;
  double blurStrengthY;

  AlignmentGeometry alignment;
  double colorOpacity;

  EdgeInsetsGeometry padding;
  Color color;

  Widget child;

  GlassDrawer({
    this.child,
    this.alignment,
    this.colorOpacity,
    this.padding,
    this.blurStrengthX,
    this.blurStrengthY,
    this.color,
  });
  @override
  _GlassDrawerState createState() => _GlassDrawerState();
}

class _GlassDrawerState extends State<GlassDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: widget.blurStrengthX ?? 10,
            sigmaY: widget.blurStrengthY ?? 10,
          ),
          child: AnimatedContainer(
            duration: kThemeChangeDuration,
            alignment: widget.alignment ?? Alignment.topLeft,
            padding: widget.padding ?? EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: widget.color == null
                  ? Colors.transparent
                  : widget.color.withOpacity(widget.colorOpacity ?? 0.2),
            ),
            child: widget.child,
            height: double.infinity,
            width: (MediaQuery.of(context).size.width / 1.35),
          )),
    );
  }
}
