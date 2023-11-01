import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class NeonButton extends StatefulWidget {
  final String text;
  const NeonButton({super.key, required this.text});

  @override
  State<NeonButton> createState() => _NeonButtonState();
}

class _NeonButtonState extends State<NeonButton> {
  bool isHover = false;
  Offset mousPos = const Offset(0, 0);
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
      child: Stack(
        children: [neonBtn()],
      ),
    );
  }

  neonBtn() {
    Color shadowColor = Colors.white;
    return Text(
      widget.text,
      style: TextStyle(
        height: 2,
        fontFamily: 'geo',
        fontSize: w! / 48,
        fontWeight: FontWeight.w800,
        letterSpacing: 2,
        color: const Color.fromARGB(255, 255, 255, 255),
        shadows: isHover
            ? [
                for (double i = 1; i < 3; i++)
                  Shadow(
                    color: shadowColor,
                    blurRadius: 3 * i,
                  )
              ]
            : null,
      ),
    );
  }
}
