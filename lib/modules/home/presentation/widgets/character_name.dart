import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class CharacterName extends StatelessWidget {
  final String name;
  const CharacterName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.black54,
      alignment: Alignment.bottomCenter,
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.3,
          fontSize: 16,
          color: MyColors.myWhite,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
