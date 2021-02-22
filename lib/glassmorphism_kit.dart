library glassmorphism_kit;

import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBar extends StatefulWidget {
  double height;
  Widget title;
  Widget leading;
  List<Widget> actions;
  Color color;
  double blurStrengthX;
  double blurStrengthY;
  double colorOpacity;
  GlassBar(
      {this.height,
      this.actions,
      this.blurStrengthX,
      this.blurStrengthY,
      this.color,
      this.leading,
      this.title,
      this.colorOpacity});
  @override
  _GlassBarState createState() => _GlassBarState();
}

class _GlassBarState extends State<GlassBar> {
  @override
  Widget build(BuildContext context) {
    var scrSize = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            // will be 10 by default if not provided
            sigmaX: widget.blurStrengthX ?? 10,
            sigmaY: widget.blurStrengthY ?? 10,
          ),
          child: Container(
            color: widget.color == null
                ? Colors.transparent
                : widget.color.withOpacity(widget.colorOpacity ?? 0.2),
            alignment: Alignment.center,
            width: scrSize.width,
            height: widget.height ?? 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 56,
                  color: Colors.transparent,
                  child: widget.leading,
                ),
                Expanded(
                  child: widget.title ?? Container(),
                ),
                Row(
                  children: widget.actions ??
                      [
                        Container(
                          width: 50,
                        )
                      ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GlassContainer extends StatefulWidget {
  double blurStrengthX;
  double blurStrengthY;
  double height;
  AlignmentGeometry alignment;
  double colorOpacity;
  double width;
  EdgeInsetsGeometry padding;
  Color color;
  BorderRadiusGeometry borderRadius;
  Widget child;
  BoxBorder border;
  GlassContainer({
    this.child,
    this.alignment,
    this.height,
    this.colorOpacity,
    this.border,
    this.borderRadius,
    this.padding,
    this.width,
    this.blurStrengthX,
    this.blurStrengthY,
    this.color,
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
              color: widget.color == null
                  ? Colors.transparent
                  : widget.color.withOpacity(widget.colorOpacity ?? 0.2),
              borderRadius:
                  widget.borderRadius ?? BorderRadius.all(Radius.zero),
              border: widget.border ??
                  Border.all(width: 0.0, color: Colors.transparent),
            ),
            child: widget.child,
            height: widget.height ?? 50,
            width: widget.width ?? 50,
          )),
    );
  }
}

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

class GlassCapsule extends StatefulWidget {
  double blurStrengthX;
  double blurStrengthY;
  double colorOpacity;
  Color color;
  double height;
  double width;
  Widget child;
  BoxBorder border;

  GlassCapsule({
    this.child,
    this.colorOpacity,
    this.border,
    this.height,
    this.width,
    this.blurStrengthX,
    this.blurStrengthY,
    this.color,
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
              color: widget.color == null
                  ? Colors.transparent
                  : widget.color.withOpacity(widget.colorOpacity ?? 0.2),
              shape: BoxShape.rectangle,
            ),
            child: widget.child,
          )),
    );
  }
}

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
