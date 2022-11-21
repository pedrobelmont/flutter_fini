// para usar só as propiedades da class sem chamar o construtor
import 'package:flutter/animation.dart';

class AppColos {
  AppColos._();
  static const Color corPd1 = Color.fromARGB(255, 20, 213, 94);
  static const Color corPd2 = Color.fromARGB(255, 26, 191, 125);
  static const Color iceWhite = Color.fromARGB(255, 238, 248, 247);
  static const List<Color> greenGradient = [
    Color.fromARGB(255, 20, 213, 94),
    Color.fromARGB(255, 26, 191, 125)
  ];
  static const List<Color> greenGradientoff = [
    Color.fromARGB(255, 123, 201, 153),
    Color.fromARGB(255, 82, 102, 94)
  ];
}
