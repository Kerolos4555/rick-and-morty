import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CustomErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'There was an error $errorMessage',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: MyColors.myGrey,
          ),
        ),
      ),
    );
  }
}
