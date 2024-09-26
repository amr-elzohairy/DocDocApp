import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/core/widgets/custom_text_button.dart';
import 'package:docdoc/core/widgets/custom_text_form_field.dart';
import 'package:docdoc/features/login/ui/widgets/already_have_an_account.dart';
import 'package:docdoc/features/login/ui/widgets/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 70.h),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalsSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to \n see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalsSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const CustomTextFormField(hintText: 'Email'),
                      verticalsSpace(30),
                      CustomTextFormField(
                        hintText: 'Password',
                        isObsecureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off_sharp
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalsSpace(25),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular
                              .copyWith(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalsSpace(32),
                const CustomTextButton(
                  buttonText: 'Login',
                ),
                verticalsSpace(80),
                const PrivacyPolicy(),
                verticalsSpace(32),
                const Center(child: AlreadyHaveAnAccount()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
