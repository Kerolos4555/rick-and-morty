import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/helper/bloc_observer.dart';
import 'package:rick_and_morty/core/helper/injection_helper.dart';
import 'package:rick_and_morty/core/router/app_router.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  initInjection();
  runApp(RickAndMorty());
}

class RickAndMorty extends StatelessWidget {
  const RickAndMorty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
