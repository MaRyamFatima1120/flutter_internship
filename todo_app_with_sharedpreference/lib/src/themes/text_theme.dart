import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_with_sharedpreference/src/themes/color_scheme.dart';

TextTheme customTextTheme(BuildContext context){

  return TextTheme(
    bodyLarge: GoogleFonts.dmSans(
      textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: lightColorScheme.onSecondary
      )
    ),
      bodySmall: GoogleFonts.dmSans(
          textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,

              color: lightColorScheme.onSecondary
          )
      )
  );
}