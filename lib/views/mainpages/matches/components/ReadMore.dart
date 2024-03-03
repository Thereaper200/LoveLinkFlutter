import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMore extends StatelessWidget {
  final String descripcion;

  const ReadMore({Key? key, required this.descripcion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 120,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(45)),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff232323),
            blurRadius: 5.0,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Expanded(
          child: ReadMoreText(
            descripcion,
            trimLines: 3,
            textAlign: TextAlign.left,
            trimMode: TrimMode.Line,
            trimCollapsedText: ' Mostrar mas',
            trimExpandedText: ' Mostrar menos',
            lessStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            moreStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
