import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const InputField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: MyColors.myGrey,
      style: TextStyle(color: MyColors.myGrey, fontSize: 18),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Fint a character...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: MyColors.myGrey, fontSize: 18),
      ),
    );
  }
}
