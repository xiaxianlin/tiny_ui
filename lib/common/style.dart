import 'package:flutter/material.dart';
import 'package:tiny_ui/utils/color.dart';

class Style {
  Style(
      {this.width,
      this.height,
      this.margin,
      this.marginLeft,
      this.marginTop,
      this.marginRight,
      this.marginBottom,
      this.padding,
      this.paddingLeft,
      this.paddingTop,
      this.paddingRight,
      this.paddingBototm,
      String? background,
      String? color}) {
    if (color != null) {
      this.color = ColorUtils.convert(color);
    }
    if (background != null) {
      this.background = ColorUtils.convert(background);
    }
  }

  Color? color;
  Color? background;
  final double? width;
  final double? height;

  final List<double>? margin;
  final double? marginLeft;
  final double? marginTop;
  final double? marginRight;
  final double? marginBottom;

  final List<double>? padding;
  final double? paddingLeft;
  final double? paddingTop;
  final double? paddingRight;
  final double? paddingBototm;
}
