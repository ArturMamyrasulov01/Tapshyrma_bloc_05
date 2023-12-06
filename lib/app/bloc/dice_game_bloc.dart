import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dice_game_event.dart';
part 'dice_game_state.dart';

class DiceGameBloc extends Bloc<DiceGameEvent, DiceGameState> {
  DiceGameBloc() : super(const DiceGameInitial()) {
    Random random = Random();
    on<DiceGameEvent>((event, emit) {
      emit(
        DiceGameState(
          onDice: random.nextInt(6) + 1,
          solDice: random.nextInt(6) + 1,
        ),
      );
    });
  }
}
