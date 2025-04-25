import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/input_field.dart';

class SearchAppBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChange;
  const SearchAppBar({
    super.key,
    required this.controller,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: InputField(controller: controller, onChanged: onChange),
      trailing: IconButton(
        onPressed: () {
          CharactersCubit.get(context).stopSearch(controller);
        },
        icon: Icon(Icons.clear, color: MyColors.myGrey),
      ),
    );
  }
}
