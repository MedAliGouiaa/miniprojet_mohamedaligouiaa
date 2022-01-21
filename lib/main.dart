import 'package:flutter/material.dart';
import 'package:miniprojet_mohamedaligouiaa/pages/page1.dart';
import 'package:miniprojet_mohamedaligouiaa/pages/page4.dart';
import 'package:miniprojet_mohamedaligouiaa/pages/page2.dart';
import 'package:miniprojet_mohamedaligouiaa/pages/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Food Delivry', routes: {
      "/": (context) => const MaPremierePage(),
      "/deuxieme": (context) =>  MaDeuxiemePage(),
      "/troisieme": (context) => MatroisiemePage(),
      "/quatrieme": (context) => MaquatriemePage(),
    }

    );
  }
}
