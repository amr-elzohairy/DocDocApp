import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/themes/app_colors.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: TextButton.styleFrom(
          backgroundColor: AppColors.mainBlue,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      child: Text(
        'Get started',
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
