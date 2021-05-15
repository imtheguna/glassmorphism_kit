import 'dart:ui';

import 'package:flutter/material.dart';

///[GlassDrawer] return Glass UI Drawer
class GlassDrawer extends StatefulWidget {
  final double? blurStrengthX;
  final double? blurStrengthY;

  final AlignmentGeometry? alignment;
  final double? colorOpacity;

  final EdgeInsetsGeometry? padding;
  final Color color;

  final Widget child;

  GlassDrawer({
    required this.child,
    this.alignment,
    this.colorOpacity,
    this.padding,
    this.blurStrengthX,
    this.blurStrengthY,
    this.color = Colors.transparent,
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
              color: widget.color == Colors.transparent
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
