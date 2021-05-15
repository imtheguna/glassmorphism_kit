import 'dart:ui';

import 'package:flutter/material.dart';

///[GlassContainer] return Glass UI Container
class GlassContainer extends StatefulWidget {
  final double? blurStrengthX;
  final double? blurStrengthY;
  final double height;
  final AlignmentGeometry? alignment;
  final double? colorOpacity;
  final double width;
  final EdgeInsetsGeometry? padding;
  final Color color;
  final BorderRadius? borderRadius;
  final Widget child;
  final BoxBorder? border;
  GlassContainer({
    required this.child,
    this.alignment,
    this.height = 50,
    this.colorOpacity,
    this.border,
    this.borderRadius,
    this.padding,
    this.width = 50,
    this.blurStrengthX,
    this.blurStrengthY,
    this.color = Colors.transparent,
  });
  @override
  _GlassContainerState createState() => _GlassContainerState();
}

class _GlassContainerState extends State<GlassContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          widget.borderRadius ?? BorderRadius.all(Radius.circular(0.0)),
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
              borderRadius:
                  widget.borderRadius ?? BorderRadius.all(Radius.zero),
              border: widget.border ??
                  Border.all(width: 0.0, color: Colors.transparent),
            ),
            child: widget.child,
            height: widget.height,
            width: widget.width,
          )),
    );
  }
}
