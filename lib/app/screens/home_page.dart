import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_05/app/bloc/dice_game_bloc.dart';
import 'package:tapshyrma_bloc_05/app/screens/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiceGameBloc(),
      child: const HomeView(),
    );
  }
}
