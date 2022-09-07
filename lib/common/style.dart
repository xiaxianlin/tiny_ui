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
      this.marginBototm,
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
  final num? width;
  final num? height;

  final List<num>? margin;
  final num? marginLeft;
  final num? marginTop;
  final num? marginRight;
  final num? marginBototm;

  final List<num>? padding;
  final num? paddingLeft;
  final num? paddingTop;
  final num? paddingRight;
  final num? paddingBototm;
}
