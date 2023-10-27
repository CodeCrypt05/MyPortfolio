import 'package:flutter/material.dart';

class HoverCard extends StatefulWidget {
  final String image;
  const HoverCard({super.key, required this.image});

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isHover = false;
  Offset mousPos = new Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onHover: (e) {
        setState(() {
          mousPos += e.delta;
          // mousPos += 0.12 as Offset;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        child: Stack(
          children: [backImage()],
        ),
      ),
    );
  }

  backImage() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: isHover
            ? [
                BoxShadow(
                  color: Colors.white.withAlpha(100),
                  blurRadius: 62.0,
                  offset: const Offset(0.0, 0.0),
                )
              ]
            : [
                BoxShadow(
                  color: Colors.black.withAlpha(100),
                  blurRadius: 12.0,
                  offset: const Offset(0.0, 0.0),
                )
              ],
      ),
      child: Image.asset(
        widget.image,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
