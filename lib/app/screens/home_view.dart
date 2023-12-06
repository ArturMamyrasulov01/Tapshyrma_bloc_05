import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_05/app.dart';
import 'package:tapshyrma_bloc_05/app/bloc/dice_game_bloc.dart';
import 'package:tapshyrma_bloc_05/app/utils/color_rel.dart';

import '../common_widgets/dice_button_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceGameBloc, DiceGameState>(
      builder: (context, state) {
        final DiceGameBloc onPressed = BlocProvider.of<DiceGameBloc>(context);
        return Scaffold(
          backgroundColor: ColorRel.colorBG,
          appBar: MyAppBar(),
          body: Center(
            child: Row(
              children: [
                DiceButtonWidget(
                  onPressed: onPressed,
                  san: state.solDice,
                ),
                DiceButtonWidget(
                  onPressed: onPressed,
                  san: state.onDice,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

