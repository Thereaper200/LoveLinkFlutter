import 'package:flutter/material.dart';

class MatchButton extends StatelessWidget {
  final Color? colorin;
  //final IconData icono;
  //final Color? icono2;
  final Color? colorbor;
  final String imagePath;

  const MatchButton({
    Key? key,
    required this.colorin,
    //required this.icono,
    /*this.icono2,*/ this.colorbor, required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 60,
          decoration: BoxDecoration(
            color: colorin,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: colorbor ?? Colors.transparent,
              width: 2,
            ),
          ),
          child: Center(
            child: Container(
                child: Image.asset(imagePath,
                  height: 30,
                  width: 30,)
            ),
          ),
        )
      ],
    );
  }
}