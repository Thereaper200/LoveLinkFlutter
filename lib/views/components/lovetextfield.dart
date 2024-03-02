import 'package:flutter/material.dart';

class LoveTextField extends StatelessWidget {
  final bool? ObscuredText;
  final String PlaceHolder;
  final Widget? Icono;
  final double Wsize;
  final TextEditingController? controller;
  const LoveTextField({super.key,
    this.ObscuredText,
    required this.PlaceHolder,
    this.Icono,
    required this.Wsize,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Wsize,
      child: TextField(
        controller: controller,
        obscureText: ObscuredText??false,
        decoration: InputDecoration(
          prefixIcon: Icono ?? Icon(null),
          border: OutlineInputBorder(),
          labelText: PlaceHolder,
        ),
      ),
    );
  }
}
