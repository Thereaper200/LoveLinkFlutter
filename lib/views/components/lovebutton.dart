import 'package:flutter/material.dart';

class LoveButton extends StatelessWidget {

  final String texto;
  final double Wsize;

  const LoveButton({super.key, required this.texto, required this.Wsize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: Wsize,
          decoration: BoxDecoration(
              color: const Color(0xFFFFCB74),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Color(0xFFC49C59),
              )
          ),
          child: Center(
            child: Text(texto,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                fontFamily: 'Monse',
              ),),
          ),
        )
      ],
    );
  }
}