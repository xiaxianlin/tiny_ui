import 'package:flutter/material.dart';
import 'package:tiny_ui/tiny_ui.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Button")),
        body: Center(
            child: Column(
          children: <Widget>[
            const Text(
              "Basic",
              style: TextStyle(height: 2, color: Colors.grey),
            ),
            Column(
              children: [
                TinyButton(
                  title: "Default",
                ),
                TinyButton(
                  title: "Success",
                  type: TinyButtonType.success,
                ),
                TinyButton(
                  title: "Warning",
                  type: TinyButtonType.warning,
                ),
                TinyButton(
                  title: "Danger",
                  type: TinyButtonType.danger,
                ),
              ],
            ),
            const Text(
              "Button Size",
              style: TextStyle(height: 2, color: Colors.grey),
            ),
            Row(
              children: [
                TinyButton(
                  title: "Small",
                  size: TinyButtonSize.small,
                ),
                TinyButton(
                  title: "Medium",
                  type: TinyButtonType.success,
                  size: TinyButtonSize.medium,
                ),
                TinyButton(
                  title: "Large",
                  type: TinyButtonType.warning,
                  size: TinyButtonSize.large,
                ),
              ],
            ),
            const Text(
              "Outline Button",
              style: TextStyle(height: 2, color: Colors.grey),
            ),
            Row(
              children: [
                TinyButton(
                  title: "Default",
                  theme: TinyButtonTheme.outline,
                  size: TinyButtonSize.small,
                ),
                TinyButton(
                  title: "Success",
                  type: TinyButtonType.success,
                  theme: TinyButtonTheme.outline,
                  size: TinyButtonSize.small,
                ),
                TinyButton(
                  title: "Warning",
                  type: TinyButtonType.warning,
                  theme: TinyButtonTheme.outline,
                  size: TinyButtonSize.small,
                ),
                TinyButton(
                  title: "Danger",
                  type: TinyButtonType.danger,
                  theme: TinyButtonTheme.outline,
                  size: TinyButtonSize.small,
                ),
              ],
            ),
            const Text(
              "Text Button",
              style: TextStyle(height: 2, color: Colors.grey),
            ),
            Row(
              children: [
                TinyButton(
                  title: "Default",
                  theme: TinyButtonTheme.text,
                ),
                TinyButton(
                  title: "Success",
                  type: TinyButtonType.success,
                  theme: TinyButtonTheme.text,
                ),
                TinyButton(
                  title: "Warning",
                  type: TinyButtonType.warning,
                  theme: TinyButtonTheme.text,
                ),
              ],
            ),
            const Text(
              "Fulled Button",
              style: TextStyle(height: 2, color: Colors.grey),
            ),
            Column(
              children: [
                TinyButton(
                  fulled: true,
                  title: "Default",
                  size: TinyButtonSize.small,
                ),
                TinyButton(
                  fulled: true,
                  title: "Success",
                  type: TinyButtonType.success,
                ),
                TinyButton(
                  fulled: true,
                  title: "Warning",
                  type: TinyButtonType.warning,
                  size: TinyButtonSize.large,
                ),
              ],
            ),
            const Text(
              "Costom Button",
              style: TextStyle(height: 2, color: Colors.grey),
            ),
            Column(
              children: [
                TinyButton(
                  title: "Custom",
                  style: Style(
                      width: 300,
                      height: 80,
                      background: "#6ae792",
                      color: "#000"),
                ),
              ],
            ),
          ],
        )));
  }
}
