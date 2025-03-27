import 'package:depi/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

// This file is used to manage the styles of the application such as text styles, colors, etc.
TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) =>
    TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
    );

TextStyle getLightTextStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) => _getTextStyle(fontSize, FontWeightManager.light, color);

TextStyle getRegularTextStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) => _getTextStyle(fontSize, FontWeightManager.regular, color);

TextStyle getMediumTextStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) => _getTextStyle(fontSize, FontWeightManager.medium, color);

TextStyle getExtraBoldTextStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) => _getTextStyle(fontSize, FontWeightManager.extraBold, color);

TextStyle getBoldTextStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) => _getTextStyle(fontSize, FontWeightManager.bold, color);
