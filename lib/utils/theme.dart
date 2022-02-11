import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// text theme for the application
TextTheme kDefaultTextTheme([Color textColor = Colors.black]) => TextTheme(
  headline1: GoogleFonts.poppins(
      color: textColor,
      fontSize: 93,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5),
  headline2: GoogleFonts.poppins(
      color: textColor,
      fontSize: 58,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5),
  headline3: GoogleFonts.poppins(
      color: textColor, fontSize: 46, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.poppins(
      color: textColor,
      fontSize: 33,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25),
  headline5: GoogleFonts.poppins(
      color: textColor, fontSize: 23, fontWeight: FontWeight.w600),
  headline6: GoogleFonts.poppins(
      color: textColor,
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15),
  subtitle1: GoogleFonts.poppins(
      color: textColor,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15),
  subtitle2: GoogleFonts.poppins(
      color: textColor,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1),
  bodyText1: GoogleFonts.rubik(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5),
  bodyText2: GoogleFonts.rubik(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25),
  button: GoogleFonts.rubik(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25),
  caption: GoogleFonts.rubik(
      color: textColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4),
  overline: GoogleFonts.rubik(
      color: textColor,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5),
);

ThemeData useDarkTheme(BuildContext context) => ThemeData.dark().copyWith(
  textTheme: kDefaultTextTheme(Colors.white),
  scaffoldBackgroundColor: const Color(0xff1A1720),
  // colorScheme: const ColorScheme.dark().copyWith(
  //
  // )
);

