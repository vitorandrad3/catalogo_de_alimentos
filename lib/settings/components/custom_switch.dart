import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch(
      {super.key,
      required this.title,
      required this.value,
      required this.subTitle,
      required this.onPressed});

  final String title;
  final String subTitle;
  final void Function(bool) onPressed;
  final bool value;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subTitle),
      value: widget.value,
      onChanged: widget.onPressed,
    );
  }
}
