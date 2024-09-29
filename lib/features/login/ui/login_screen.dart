import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/core/widgets/custom_text_button.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/already_have_an_account.dart';
import 'package:docdoc/features/login/ui/widgets/email_and_password.dart';
import 'package:docdoc/features/login/ui/widgets/login_bloc_listner.dart';
import 'package:docdoc/features/login/ui/widgets/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 70.h),
        child: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                'We\'re excited to have you back, can\'t wait to \n see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpace(24),
              Column(
                children: [
                  verticalSpace(24),
                  const EmailAndPassword(),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style:
                          TextStyles.font13BlueRegular.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              ),
              verticalSpace(32),
              CustomTextButton(
                onPressed: () => validateThenDoLogin(context),
                buttonText: 'Login',
              ),
              verticalSpace(30),
              const PrivacyPolicy(),
              verticalSpace(25),
              const Center(child: AlreadyHaveAnAccount()),
              const LoginBlocListner(),
            ]),
          ),
        ),
      ),
    );
  }

  validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text));
    }
  }
}
