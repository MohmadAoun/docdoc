import 'package:docdoc/Core/Helpers/spacing.dart';
import 'package:docdoc/Core/Theming/font_styles.dart';
import 'package:docdoc/Core/Widgets/app_text_button.dart';
import 'package:docdoc/Features/login/Ui/widgets/alternative_sign_in.dart';
import 'package:docdoc/Features/login/Ui/widgets/email_and_password_form.dart';
import 'package:docdoc/Features/login/Ui/widgets/text_with_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8.h),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36.h),
                const EmailAndPasswordForm(),
                verticalSpace(32.h),
                AppTextButton(
                  buttonText: 'Login',
                  textStyle: TextStyles.font16WhiteMedium,
                  onPressed: () {},
                ),
                verticalSpace(46.h),
                const TextWithLine(),
                verticalSpace(32.h),
                const AlternativeSignIn(),
                verticalSpace(32.h),
                Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'By logging, you agree to our ',
                            style: TextStyles.font12MediumGrayRegular,
                          ),
                          TextSpan(
                            text: 'Terms & Conditions ',
                            style: TextStyles.font11BlackRegular,
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyles.font12MediumGrayRegular,
                          ),
                          TextSpan(
                            text: 'PrivacyPolicy.',
                            style: TextStyles.font11BlackRegular,
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(24.h),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyles.font11BlackRegular,
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyles.font12BlueRegular,
                      ),
                    ]))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
