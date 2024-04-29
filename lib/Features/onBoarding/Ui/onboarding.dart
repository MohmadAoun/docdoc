import 'dart:developer';

import 'package:docdoc/Core/Helpers/extensions.dart';
import 'package:docdoc/Core/Helpers/spacing.dart';
import 'package:docdoc/Core/Theming/font_styles.dart';
import 'package:docdoc/Features/login/Ui/login.dart';
import 'package:docdoc/Features/onBoarding/Ui/widgets/doc_doc_logo.dart';
import 'package:docdoc/Features/onBoarding/Ui/widgets/doctor_image_and_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Core/Routing/routes.dart';
import '../../../Core/Widgets/app_text_button.dart';

class OnBoradingScreen extends StatelessWidget {
  const OnBoradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Column(
                children: [
                  const DocDocLogo(),
                  verticalSpace(30),
                  const DoctorImageAndTitle(),
                  verticalSpace(18),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.w),
                    child: Column(
                      children: [
                        Text(
                          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                          style: TextStyles.font11GrayRegular,
                          textAlign: TextAlign.center,
                        ),
                        verticalSpace(32),
                        AppTextButton(
                          buttonText: 'Get Started',
                          textStyle: TextStyles.font16WhiteMedium,
                          onPressed: () {
                            context.pushNamed(Routes.loginScreen);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
