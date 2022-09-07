import 'package:flutter/material.dart';

bool _isRGB(String color) {
  return color.toLowerCase().contains("rgb");
}

bool _isHex(String color) {
  return color.contains("#");
}

Color _convertRGB(String color) {
  color = color.toLowerCase();
  var start = color.contains("rgba") ? 5 : 4;
  var value = color.substring(start, color.length - 1);
  var rgba = value.split(",").map((e) => num.parse(e.trim())).toList();
  var r = rgba[0] as int;
  var g = rgba[1] as int;
  var b = rgba[2] as int;
  var a = rgba[3] as double;
  return Color.fromRGBO(r, g, b, a);
}

Color _convertHex(String color) {
  var hexColor = color.replaceAll("#", "").toUpperCase();
  if (hexColor.length == 3) {
    var v = hexColor.split("");
    hexColor = "FF${v[0]}${v[0]}${v[1]}${v[1]}${v[2]}${v[2]}";
  }
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
  return Colors.transparent;
}

Color _convertName(String color) {
  switch (color) {
    case "white":
      return Colors.white;
    case "red":
      return Colors.red;
    case "blue":
      return Colors.blue;
  }
  return Colors.transparent;
}

class ColorUtils {
  static Color convert(String color) {
    if (_isHex(color)) {
      return _convertHex(color);
    }
    if (_isRGB(color)) {
      return _convertRGB(color);
    }
    return _convertName(color);
  }
}
