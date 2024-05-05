import 'package:docdoc/Core/Routing/app_router.dart';
import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Core/Theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class DocDoc extends StatelessWidget {
  final AppRouter appRouter;
  const DocDoc({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'DocDoc',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
