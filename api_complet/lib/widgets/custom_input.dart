// ignore_for_file: must_be_immutable

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

import '../config/app_strings.dart';

class CustomInput extends StatefulWidget {
  CustomInput({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.validator,
    this.onChanged = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
  });
  TextEditingController? controller;
  String? label;
  String? hint;
  String? Function(String?)? validator;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  bool? onChanged;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  int maxLine = 1;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
          const BorderRadius.all(Radius.circular(14.0)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextFormField(
          obscureText: widget.obscureText!,
          controller: widget.controller,
          validator: widget.validator,
          minLines: maxLine,
          maxLines: maxLine,
          onChanged: widget.onChanged! ? (value) {
          if (value.length > 30) {
            setState(() => maxLine = 3);
            } else {
            setState(() => maxLine = 1);
            }
          } : null,
          decoration: InputDecoration(
            hintText: AppStrings.username,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12),
              ),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
