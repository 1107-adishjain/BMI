import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const Reusablecard({super.key, required this.Colour,this.Containerchild,this.Onpress,});
  // ignore: non_constant_identifier_names
  final Color Colour;
  // ignore: non_constant_identifier_names
  final Widget ? Containerchild;
  // ignore: non_constant_identifier_names
  final VoidCallback ? Onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:Onpress,
      child: Container(
        height: 150.0,
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colour,
        ),
        child: Containerchild,
      ),
    );
  }
}
