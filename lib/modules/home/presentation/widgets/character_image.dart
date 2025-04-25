import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class CharacterImage extends StatelessWidget {
  final String image;
  const CharacterImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.myGrey,
      child:
          image.isNotEmpty
              ? FadeInImage.assetNetwork(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
                placeholder: 'assets/images/loading.gif',
                image: image,
              )
              : Image.asset('assets/images/placeholder.png'),
    );
  }
}
