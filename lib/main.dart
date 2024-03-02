import 'package:flutter/material.dart';
import 'views/access/login.dart';
import 'views/mainmenu.dart';

void main() {
  runApp(const MyApp());
}

//loadpage
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoveMenu(),
    );
  }
}
