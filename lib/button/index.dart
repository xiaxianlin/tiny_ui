// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tiny_ui/common/style.dart';
import 'package:tiny_ui/utils/color.dart';

enum TinyButtonType { primary, success, warning, danger }

enum TinyButtonTheme { filled, outline, text }

enum TinyButtonSize { small, medium, large }

class TinyButton extends StatelessWidget {
  TinyButton(
      {Key? key,
      this.title = "",
      this.type,
      this.style,
      this.theme,
      this.size,
      this.icon,
      this.fulled = false,
      this.onPressed})
      : super(key: key);

  String title;
  final Style? style;
  final TinyButtonType? type;
  final TinyButtonTheme? theme;
  final TinyButtonSize? size;
  final Widget? icon;
  final bool fulled;
  final VoidCallback? onPressed;

  Color _background() {
    if (style?.background != null) {
      return style?.background as Color;
    }
    switch (type) {
      case TinyButtonType.success:
        return ColorUtils.convert("#6abf40");
      case TinyButtonType.warning:
        return ColorUtils.convert("#ffaa00");
      case TinyButtonType.danger:
        return ColorUtils.convert("#f65656");
      default:
        return ColorUtils.convert("#338bff");
    }
  }

  Size _size() {
    double w = 120, h = 40, dw = 40, dh = 8;
    if (size == TinyButtonSize.small) {
      w -= dw;
      h -= dh;
    }
    if (size == TinyButtonSize.large) {
      w += dw;
      h += dh;
    }
    if (style?.width != null) {
      w = style?.width as double;
    }
    if (style?.height != null) {
      h = style?.height as double;
    }
    if (fulled) {
      w = double.infinity;
    }
    return Size(w, h);
  }

  TextStyle _textStyle() {
    switch (size) {
      case TinyButtonSize.small:
        return const TextStyle(fontSize: 12, height: 1.5);
      case TinyButtonSize.large:
        return const TextStyle(fontSize: 16, height: 1.5);
      default:
        return const TextStyle(fontSize: 14, height: 1.5);
    }
  }

  ButtonStyle? _buttonStyle() {
    var textStyle = _textStyle();
    var color = _background();
    var fontColor = style?.color == null ? color : style?.color as Color;
    if (theme == TinyButtonTheme.text) {
      return TextButton.styleFrom(
          foregroundColor: fontColor, textStyle: textStyle);
    }
    if (theme == TinyButtonTheme.outline) {
      return OutlinedButton.styleFrom(
          minimumSize: _size(),
          textStyle: textStyle,
          foregroundColor: fontColor,
          side: BorderSide(color: color));
    }

    return ElevatedButton.styleFrom(
        minimumSize: _size(),
        backgroundColor: color,
        textStyle: textStyle,
        foregroundColor: style?.color);
  }

  void _onPressed() {}

  ButtonStyleButton _button() {
    var style = _buttonStyle();

    if (theme == TinyButtonTheme.outline) {
      return OutlinedButton(
          style: style, onPressed: _onPressed, child: Text(title));
    }
    if (theme == TinyButtonTheme.text) {
      return TextButton(
          style: style, onPressed: _onPressed, child: Text(title));
    }

    return ElevatedButton(
      style: style,
      onPressed: _onPressed,
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: _button(),
    );
  }
}
