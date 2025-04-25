import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: MyColors.myGrey),
    );
  }
}
