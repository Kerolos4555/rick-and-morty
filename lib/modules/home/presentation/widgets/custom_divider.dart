import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class CustomDivider extends StatelessWidget {
  final double endIndent;
  const CustomDivider({super.key, required this.endIndent});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.myYellow,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }
}
