import 'package:flutter/material.dart';

class ColorsConstants{
  static const indigoPrincipal = Color(0xFF303F9F);

  static const textTitulo = Color(0xff292929);
  static const textInterno = Color(0xff494949);
  static const textSegundario = Color(0xff595959);
  static const textAuxiliar = Color(0xff797979);
  static const bordaCard = Color(0xffEBEBEB);
  static const fundoTela = Color(0xffF8F8F8);
  static const fundoTelaDark = Color(0xff2C2C2C);
  static const fundoCard = Color(0xffFFFFFF);

  static const colorSchema = ColorScheme(
    primary: ColorsConstants.indigoPrincipal,
    brightness: Brightness.light,
    onPrimary:  ColorsConstants.indigoPrincipal,
    secondary: Colors.grey,
    background: Colors.white,
    onBackground: Color(0xff292929),
    onSurface: Color(0xff292929),
    surface: Colors.white,
    onSecondary: Colors.grey,
    error: Colors.red,
    onError: Colors.red,
    surfaceTint: Colors.white,
  );
}