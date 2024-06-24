import 'package:flutter/material.dart';
import 'constants.dart';
class IconItem extends StatelessWidget {
  @override
  const IconItem(this.texting, this.Iconname, {super.key});
  // ignore: non_constant_identifier_names
  final IconData Iconname;
  final String texting;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Iconname,
          size: 78.0,
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          texting,
          style: styling,
        )
      ],
    );
  }
}
