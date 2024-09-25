import 'package:docdoc/core/themes/app_colors.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
      this.textStyle,
      this.onPressed});
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical:verticalPadding?.h ?? 14.h,
          horizontal: horizontalPadding?.w ?? 12.w,
        ),
        backgroundColor: backgroundColor ?? AppColors.mainBlue,
        minimumSize: Size(buttonWidth?.w ?? double.infinity, buttonHeight ?? 52.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
