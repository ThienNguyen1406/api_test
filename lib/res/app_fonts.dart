import 'package:flutter/material.dart';

class AppFonts {
  static const String quicksandBold = 'Quicksand-Bold';
  static const String quicksandLight = 'Quicksand-Light';
  static const String quicksandMedium = 'Quicksand-Medium';
  static const String quicksandRegular = 'Quicksand-Regular';
  static const String quicksandSemiBold = 'Quicksand-SemiBold';
  static const String interMedium = 'assets/fonts/Inter_18pt-Medium.ttf';

  static TextStyle quicksandBold600(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandBold,
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: color,
      );
  static TextStyle quicksandBold700(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandBold,
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: color,
      );

  static TextStyle quicksandMedium400(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandMedium,
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: color,
      );
  static TextStyle quicksandMedium500(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandMedium,
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: color,
      );
  static TextStyle quicksandMedium700(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandMedium,
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: color,
      );
  static TextStyle quicksandSemiBold600(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandSemiBold,
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: color,
      );
  static TextStyle quicksandMedium600(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandMedium,
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: color,
      );

      static TextStyle interMedium600(
          [double fontSize = 14, Color color = Colors.black]) =>
      TextStyle(
        fontFamily: quicksandMedium,
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: color,
      );
}
