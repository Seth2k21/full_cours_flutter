// ignore_for_file: must_be_immutable

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.child, required this.onTap});
  Widget child;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: NeumorphicButton(
        style: const NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.stadium(),
        ),
        onPressed: onTap,
        child: child,
      ),
    );
  }
}
