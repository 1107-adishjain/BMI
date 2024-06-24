import "package:flutter/material.dart";
import 'constants.dart';
class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.label, required this.onpressed});
  final String label;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpressed,
      child: Container(
        height: kbottomcontainerheight,
        width: MediaQuery.of(context).size.width,
        color: kbottomcontainercolor,
        margin: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            label,
            style: kbottomcontainerstyle,
          ),
        ),
      ),
    );
  }
}
