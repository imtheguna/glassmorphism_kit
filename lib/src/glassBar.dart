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
