import 'package:flutter/material.dart';
import 'screens/Maindata.dart';

void main() {
  runApp(const BMICALCULATOR());
}

class BMICALCULATOR extends StatefulWidget {
  const BMICALCULATOR({super.key});

  @override
  State<BMICALCULATOR> createState() => _BMICALCULATORState();
}

class _BMICALCULATORState extends State<BMICALCULATOR> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 10, 14, 32)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 10, 13, 34),
      ),
      debugShowCheckedModeBanner: false,
      title: "BMI CALCULATOR",
      home: Maincnt(),
    );
  }
}
