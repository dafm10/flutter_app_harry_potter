import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/ui/general/colors.dart';
import 'package:flutter_app_harry_potter/ui/general/fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? colorText;
  final double? fontSize;
  final FontWeight? fontWeight;

  TextWidget({
    required this.text,
    this.colorText,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colorText,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

class H1 extends StatelessWidget {
  final String text;

  H1({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      fontSize: H1_SIZE,
      colorText: COLOR_FONT_PRIMARY,
      fontWeight: FontWeight.bold,
    );
  }
}

class H2 extends StatelessWidget {
  final String text;

  H2({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      fontSize: H2_SIZE,
      colorText: COLOR_FONT_PRIMARY,
      fontWeight: FontWeight.w700,
    );
  }
}

class H3 extends StatelessWidget {
  final String text;

  H3({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      fontSize: H3_SIZE,
      colorText: COLOR_FONT_PRIMARY,
      fontWeight: FontWeight.w600,
    );
  }
}

class H4 extends StatelessWidget {
  final String text;

  H4({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      fontSize: H4_SIZE,
      colorText: COLOR_FONT_PRIMARY.withOpacity(0.9),
      fontWeight: FontWeight.w500,
    );
  }
}

class H5 extends StatelessWidget {
  final String text;

  H5({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      fontSize: H5_SIZE,
      colorText: COLOR_FONT_PRIMARY,
      fontWeight: FontWeight.w500,
    );
  }
}

