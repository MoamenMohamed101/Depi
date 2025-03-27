import 'package:depi/presentation/resources/assets_manager.dart';
import 'package:depi/presentation/resources/color_manager.dart';
import 'package:depi/presentation/resources/strings_manager.dart';
import 'package:depi/presentation/resources/styles_manager.dart';
import 'package:depi/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AuthenticationAppBar extends StatelessWidget {
  const AuthenticationAppBar({super.key});

  @override
  Widget build(BuildContext context) => Container(
    height: AppSize.s95.h,
    width: AppSize.s440.w,
    color: ColorManager.primaryColor,
    child: designOfAppBar(context),
  );

  Row designOfAppBar(BuildContext context) {
    return Row(
      children: [
        backIcon(context),
        logoImage(),
        const Spacer(),
        Text(
          Strings.login,
          style: getBoldTextStyle(color: ColorManager.whiteColor, fontSize: 25),
        ),
        Gap(12.w),
      ],
    );
  }

  Image logoImage() {
    return Image.asset(
      ImageAssets.logo,
      height: AppSize.s29,
      width: AppSize.s85,
    );
  }

  IconButton backIcon(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(
        Icons.arrow_back_ios_new_sharp,
        color: ColorManager.whiteColor,
        size: 20,
      ),
    );
  }
}
