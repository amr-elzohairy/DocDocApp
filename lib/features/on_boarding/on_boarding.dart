import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/features/on_boarding/widgets/docdoc_logo_and_name.dart';
import 'package:docdoc/features/on_boarding/widgets/get_started_button.dart';
import 'package:docdoc/features/on_boarding/widgets/man_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DocdocLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const ManImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font12GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 31.h,
                      ),
                      const GetStartedButton(),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
