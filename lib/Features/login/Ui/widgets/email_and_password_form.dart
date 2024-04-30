import 'package:docdoc/Core/Helpers/spacing.dart';
import 'package:docdoc/Core/Widgets/app_text_form_field.dart';
import 'package:docdoc/Features/login/Ui/widgets/fotgot_password_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPasswordForm extends StatelessWidget {
  const EmailAndPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          controller: TextEditingController(),
          hintText: 'Email',
        ),
        verticalSpace(16.h),
        AppTextFormField(
          controller: TextEditingController(),
          hintText: 'Password',
        ),
        verticalSpace(16.h),
        const ForgotPasswordRow(),
      ],
    );
  }
}
