import 'package:flutter/material.dart';

import '../bloc/dice_game_bloc.dart';

class DiceButtonWidget extends StatelessWidget {
  const DiceButtonWidget({
    Key? key,
    required this.onPressed,
    required this.san,
  }) : super(key: key);
  final int san;
  final DiceGameBloc onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          onPressed.add(DiceGameEvent());
        },
        child: Image.asset(
          "assets/images/dice_$san.png",
        ),
      ),
    );
  }
}
