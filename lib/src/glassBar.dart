import 'dart:ui';

import 'package:flutter/material.dart';

/// [GlassBar] return a GlassBar like AppBar
class GlassBar extends StatefulWidget {
  ///[height] GlassBar height type [double]
  final double height;

  ///[title] GlassBar title type [Widget]
  final Widget title;

  ///[leading] GlassBar leading type [Widget]
  final Widget? leading;

  ///[actions] GlassBar actions type [List<Widget>]
  final List<Widget>? actions;

  ///[color] GlassBar color type [Color]
  final Color? color;

  ///[blurStrengthX] GlassBar blur Strength X type [double]
  final double? blurStrengthX;

  ///[blurStrengthY] GlassBar blur Strength Y type [double]
  final double? blurStrengthY;

  ///[colorOpacity] GlassBar color opacity type [double]
  final double? colorOpacity;
  GlassBar(
      {this.height = 60,
      this.actions,
      this.blurStrengthX,
      this.blurStrengthY,
      this.color,
      this.leading,
      required this.title,
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
                : widget.color!.withOpacity(widget.colorOpacity ?? 0.2),
            alignment: Alignment.center,
            width: scrSize.width,
            height: widget.height,
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
                  child: widget.title,
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
