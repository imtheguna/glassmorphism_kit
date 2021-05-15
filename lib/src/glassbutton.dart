import 'dart:ui';

import 'package:flutter/material.dart';

///[GlassBotton] return Glass UI Botton
class GlassBotton extends StatefulWidget {
  final double blurStrengthX;
  final double blurStrengthY;
  final double height;
  final AlignmentGeometry alignment;
  final double colorOpacity;
  final double width;
  final EdgeInsetsGeometry? padding;
  final Color color;
  final BorderRadius? borderRadius;
  final Widget child;
  final BoxBorder? border;
  final Function onTap;
  final Function? onDoubleTap;
  final Function? onLongPress;
  GlassBotton({
    required this.child,
    this.alignment = Alignment.topLeft,
    required this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.height = 50,
    this.colorOpacity = 0.2,
    this.border,
    this.borderRadius,
    this.padding,
    this.width = 50,
    this.blurStrengthX = 10,
    this.blurStrengthY = 10,
    this.color = Colors.transparent,
  });
  @override
  _GlassContainerState createState() => _GlassContainerState();
}

class _GlassContainerState extends State<GlassBotton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          widget.borderRadius ?? BorderRadius.all(Radius.circular(0.0)),
      child: InkWell(
        onTap: () => widget.onTap,
        onDoubleTap: () => widget.onDoubleTap,
        onLongPress: () => widget.onLongPress,
        child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: widget.blurStrengthX,
              sigmaY: widget.blurStrengthY,
            ),
            child: AnimatedContainer(
              duration: kThemeChangeDuration,
              alignment: widget.alignment,
              padding: widget.padding,
              decoration: BoxDecoration(
                color: widget.color == Colors.transparent
                    ? Colors.transparent
                    : widget.color.withOpacity(widget.colorOpacity),
                borderRadius: widget.borderRadius,
                border: widget.border ??
                    Border.all(width: 0.0, color: Colors.transparent),
              ),
              child: widget.child,
              height: widget.height,
              width: widget.width,
            )),
      ),
    );
  }
}
