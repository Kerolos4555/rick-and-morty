import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/app_bar_builder.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/characters_builder.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myYellow,
      body: SafeArea(
        child: Column(
          children: [
            AppBarBuilder(controller: searchController),
            Expanded(child: CharactersBuilder(controller: searchController)),
          ],
        ),
      ),
    );
  }
}
