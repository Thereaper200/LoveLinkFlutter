import 'package:flutter/material.dart';

class PositionedText extends StatelessWidget {
  final String textLabel;
  final double top;
  final double left;
  final double textSize;
  final double width;
  final double height;

  const PositionedText(
      {super.key,
      required this.textLabel,
      required this.top,
      required this.left,
      required this.textSize,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: width,
        height: height,
        child: Text(
          textLabel,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          softWrap: false,
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
