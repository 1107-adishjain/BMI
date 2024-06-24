import 'package:flutter/material.dart';

// building own build method to use anywhere according to your own customisation:
class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.setting,
  });
  final IconData icon;
  final VoidCallback setting;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: setting,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(height: 40, width: 40.0),
      // elevation: 6.0,
      child: Icon(icon),
    );
  }
}
