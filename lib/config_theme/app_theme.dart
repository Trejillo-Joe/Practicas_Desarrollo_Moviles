import 'package:flutter/material.dart';



const List<Color> colors = [
  Colors.black,
  Color.fromARGB(255, 33, 150, 243),
  Colors.orange,
  Colors.pink,
  Colors.green,
  Colors.purple,
];

class AppTheme  {
  final int selectColors;

  const AppTheme ({required this.selectColors})
      : assert(
          selectColors >= 0 && selectColors < colors.length,
          'selectColors SOLO ES DEL 0 al ${colors.length - 1}\'el esquema de colores \'',
        );


        ThemeData Theme() => ThemeData(
          primaryColor: colors[selectColors],
          brightness: Brightness.light
        );
}