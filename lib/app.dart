import 'package:flutter/material.dart';

import 'app/screens/home_page.dart';
import 'app/utils/color_rel.dart';
import 'app/utils/string_rel.dart';
import 'app/utils/text_style_rel.dart';

class DiceGameApp extends MaterialApp {
  const DiceGameApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
}

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
          elevation: 0.0,
          backgroundColor: ColorRel.colorBG,
          centerTitle: true,
          title: const Text(
            StringRel.title,
            style: TextStyleRel.titleStyle,
          ),
        );
}
