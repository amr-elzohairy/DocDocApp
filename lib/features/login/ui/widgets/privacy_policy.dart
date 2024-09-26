import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: 'By logging, you agree to our',
              style: TextStyles.font12GrayRegular.copyWith(
                fontSize: 12,
              )),
          TextSpan(
              text: ' Terms & Conditions',
              style: TextStyles.font14BlueDarkInter.copyWith(fontSize: 15)),
          TextSpan(
            text: ' and!',
            style: TextStyles.font12GrayRegular
                .copyWith(fontSize: 12, height: 1.5),
          ),
          TextSpan(
              text: 'PrivacyPolicy',
              style: TextStyles.font14BlueDarkInter.copyWith(fontSize: 15)),
        ],
      ),
    );
  }
}
