import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: 'Already have an account yet?',
              style: TextStyles.font12GrayRegular.copyWith(
                fontSize:13,
                color: Colors.black,
              )),
          TextSpan(
              text: ' Sign Up',
              style: TextStyles.font13BlueRegular.copyWith(
                fontSize: 15,
              )),
        ],
      ),
    );
  }
}
