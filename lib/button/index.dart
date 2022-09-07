import 'package:flutter/material.dart';
import 'package:tiny_ui/common/style.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.title, this.style, this.onPressed})
      : super(key: key);

  final String title;
  final Style? style;

  final VoidCallback? onPressed;

  void _handleTap() {
    onPressed!();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        color: style?.background,
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text(
          title,
          style: TextStyle(color: style?.color),
        ),
      ),
    );
  }
}
