import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lovelink/views/mainpages/matches/components/PositionedText.dart';
import 'package:lovelink/views/mainpages/matches/components/MatchButton.dart';
import 'package:lovelink/views/mainpages/matches/components/ReadMore.dart';
import 'package:lovelink/constants.dart';


class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}


class _MatchesState extends State<Matches> {

  void inputLike() {
    print("Like");
  }

  void inputDislike() {
    print("Dislike");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: MatchesCard(
          onDislike: inputDislike,
          onlike: inputLike,
          gender: "Hombre",
          age: "22",
          photo: "assets/images/Daniel.jpg",
          name: "Daniel",
          info: "Me llamo Daniel Me gusta la musica de todo tipo pero sobre todo tranquila y los videojuegos Tengo 2 perros y si tienes 1 gato podemos conocermos 😊 Espero conocerte pronto!",
        ),
      )
    );
  }
}


class MatchesCard extends StatelessWidget {
  final void Function() onDislike;
  final void Function() onlike;
  final String name;
  final String age;
  final String info;
  final String photo;
  final String gender;

  const MatchesCard({
    super.key,
    required this.onDislike,
    required this.onlike,
    required this.name,
    required this.age,
    required this.info,
    required this.photo,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height-290,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(photo),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.transparent),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0))),
              ),
              PositionedText(
                textLabel: "Genero: ${gender}",
                top: 7,
                left: 160,
                textSize: 16,
                width: 140,
                height: 60,
              ),
              PositionedText(
                textLabel: "Edad: ${age}",
                top: 30,
                left: 160,
                textSize: 16,
                width: 130,
                height: 60,
              ),
              PositionedText(
                textLabel: name,
                top: 5,
                left: 10,
                textSize: 23,
                width: 140,
                height: 160,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: ()=>onDislike(),
                        child: const MatchButton(
                          colorin: Color(0xffffa31a),
                          colorbor: Color(0xff1b1b1b),
                          imagePath: "assets/icons/Xg.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: ()=>onlike(),
                        child: const MatchButton(
                          colorin: Color(0xFF292929),
                          colorbor: Color(0xffffa31a),
                          imagePath: "assets/icons/Corazon.png",
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ReadMore(descripcion: info)
      ],
    );
  }
}
