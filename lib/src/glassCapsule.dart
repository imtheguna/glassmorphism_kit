import 'dart:ui';

import 'package:flutter/material.dart';

///[GlassCapsule] return Glass UI Capsule
class GlassCapsule extends StatefulWidget {
  final double? blurStrengthX;
  final double? blurStrengthY;
  final double? colorOpacity;
  final Color color;
  final double? height;
  final double? width;
  final Widget child;
  final BoxBorder? border;

  GlassCapsule({
    required this.child,
    this.colorOpacity,
    this.border,
    this.height,
    this.width,
    this.blurStrengthX,
    this.blurStrengthY,
    this.color = Colors.transparent,
  });
  @override
  _GlassCapsuleState createState() => _GlassCapsuleState();
}

class _GlassCapsuleState extends State<GlassCapsule> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.shortestSide / 2),
      child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: widget.blurStrengthX ?? 10,
            sigmaY: widget.blurStrengthY ?? 10,
          ),
          child: AnimatedContainer(
            height:
                widget.height ?? MediaQuery.of(context).size.shortestSide / 4,
            width: widget.width ?? MediaQuery.of(context).size.shortestSide,
            duration: kThemeChangeDuration,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.shortestSide / 2),
              border: widget.border,
              color: widget.color == Colors.transparent
                  ? Colors.transparent
                  : widget.color.withOpacity(widget.colorOpacity ?? 0.2),
              shape: BoxShape.rectangle,
            ),
            child: widget.child,
          )),
    );
  }
}
