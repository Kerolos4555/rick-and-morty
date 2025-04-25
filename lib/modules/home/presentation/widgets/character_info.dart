import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class CharacterInfo extends StatelessWidget {
  final String title;
  final String value;
  const CharacterInfo({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(color: MyColors.myWhite, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
