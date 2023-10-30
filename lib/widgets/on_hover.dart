import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final String title;
  const OnHover({super.key, required this.title});

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scaled(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: transform,
        child: Text(widget.title),
      ),
    );
  }

  void onEntered(isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
