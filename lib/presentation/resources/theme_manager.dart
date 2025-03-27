import 'package:depi/presentation/resources/color_manager.dart';
import 'package:depi/presentation/resources/styles_manager.dart';
import 'package:depi/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
ThemeData getApplicationTheme() => ThemeData(
  primaryColor: ColorManager.primaryColor,
  splashColor: ColorManager.primaryColor,
  appBarTheme: theAppBarThemeOfAllTheApplication(),
  buttonTheme: theButtonThemeOfAllTheApplication(),
  inputDecorationTheme: theTextFiledThemeOfAllTheApplication(),
);

InputDecorationTheme theTextFiledThemeOfAllTheApplication() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.all(AppPadding.p8), // padding of the input field
    hintStyle: getRegularTextStyle(color: ColorManager.greyColor, fontSize: AppSize.s14),
    labelStyle: getMediumTextStyle(color: ColorManager.greyColor, fontSize: AppSize.s14),
    errorStyle: getRegularTextStyle(color: ColorManager.redColor),
    enabledBorder: OutlineInputBorder(
      borderSide:  BorderSide(
        color: ColorManager.greyColor,
        width: AppSize.s1_5,
      ),
      borderRadius: BorderRadius.circular(AppSize.s8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide:  BorderSide(
        color: ColorManager.primaryColor,
        width: AppSize.s1_5,
      ),
      borderRadius: BorderRadius.circular(AppSize.s8),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.redColor,
        width: AppSize.s1_5,
      ),
      borderRadius: BorderRadius.circular(AppSize.s8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide:  BorderSide(
        color: ColorManager.primaryColor,
        width: AppSize.s1_5,
      ),
      borderRadius: BorderRadius.circular(AppSize.s8),
    ),
  );
}

ButtonThemeData theButtonThemeOfAllTheApplication() {
  return ButtonThemeData(
    shape: const StadiumBorder(),
    buttonColor: ColorManager.primaryColor,
    disabledColor: ColorManager.greyColor,
    splashColor: ColorManager.whiteColor,
  );
}

AppBarTheme theAppBarThemeOfAllTheApplication() {
  return AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorManager.blackColor,
      statusBarIconBrightness: Brightness.dark,
    ),
    color: ColorManager.whiteColor,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: ColorManager.whiteColor,
    ),
    titleTextStyle: getRegularTextStyle(
      color: ColorManager.whiteColor,
      fontSize: AppSize.s18,
    ),
    elevation: AppSize.s0,
    shadowColor: ColorManager.greyColor,
    // backgroundColor: ColorManager.primaryColor
  );
}