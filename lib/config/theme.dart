import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_api/core/constants/colors.dart';

final ThemeData appTheme = ThemeData(
  textTheme: GoogleFonts.spaceGroteskTextTheme(),
  useMaterial3: true,
  primaryColor: ColorsConstants.indigoPrincipal,
  scaffoldBackgroundColor: ColorsConstants.fundoTelaDark,
  colorScheme: ColorsConstants.colorSchema,
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorsConstants.indigoPrincipal,
    titleTextStyle: TextStyle(
      fontSize: 24,
      color: ColorsConstants.fundoTela
    ),
    iconTheme: IconThemeData(color: ColorsConstants.fundoTela),
  ),
  cardTheme: const CardTheme(
    color: ColorsConstants.fundoTelaDark
  ),
  iconTheme: const IconThemeData(
    color: Colors.white
  ),
);