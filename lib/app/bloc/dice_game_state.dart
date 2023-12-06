part of 'dice_game_bloc.dart';

@immutable
class DiceGameState {
  final int onDice;
  final int solDice;
const   DiceGameState({
    required this.onDice,
    required this.solDice,
  });
}

class DiceGameInitial extends DiceGameState {
 const  DiceGameInitial()
      : super(
          onDice: 3,
          solDice: 1,
        );
}
