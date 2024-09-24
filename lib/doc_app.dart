// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:docdoc/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: "Doc App",
        theme: ThemeData(
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generatedRote,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
