import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: constant_identifier_names
//const String BASE_IMAGE_URL =
    //'https://';

// colors
const Color kBlack = Color(0xFF1E1E1E);
const Color kPrime = Color(0xffFFC801);
const Color kSecondary = Color(0xFFD49D02);
const Color kBrown = Color(0xFF3B1F10);
const Color kGrey = Color(0xFFF2F5FD);
const Color kWhite = Color(0xffFFFFFF);

// text style
final TextStyle kHeading3 = GoogleFonts.poppins(
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: kBlack,
);
final TextStyle kHeading4 = GoogleFonts.poppins(
  fontSize: 28,
  fontWeight: FontWeight.w600,
  color: kWhite,
);
final TextStyle kHeading5 = GoogleFonts.poppins(
  fontSize: 22,
  fontWeight: FontWeight.w600,
  color: kBlack,
);
final TextStyle kHeading6 = GoogleFonts.poppins(
  fontSize: 19,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.15,
  color: kBlack,
);
final TextStyle kSubtitle = GoogleFonts.poppins(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.15,
  color: kBlack,
);

final TextStyle kWhiteSubtitle = GoogleFonts.poppins(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.15,
  color: kWhite,
);
final TextStyle kBodyText = GoogleFonts.poppins(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
  color: kBlack,
);
final TextStyle kWhiteBodyText = GoogleFonts.poppins(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
  color: kWhite,
);
final TextStyle overline = GoogleFonts.poppins(
  fontSize: 12,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.25,
  color: kBlack,
);

// text theme
final kTextTheme = TextTheme(
  headline3: kHeading3,
  headline4: kHeading4,
  headline5: kHeading5,
  headline6: kHeading6,
  subtitle1: kSubtitle,
  subtitle2: kWhiteSubtitle,
  bodyText1: kBodyText,
  bodyText2: kWhiteBodyText,
  overline: overline,
);

const kColorScheme = ColorScheme(
  primary: kSecondary,
  primaryContainer: kSecondary,
  secondary: kSecondary,
  secondaryContainer: kSecondary,
  surface: kBlack,
  background: kBlack,
  error: Colors.red,
  onPrimary: kBlack,
  onSecondary: kBlack,
  onSurface: kBlack,
  onBackground: kBlack,
  onError: kBlack,
  brightness: Brightness.light,
);