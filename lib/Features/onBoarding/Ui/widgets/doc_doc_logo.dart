import 'package:docdoc/Core/Theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocDocLogo extends StatelessWidget {
  const DocDocLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/DocDoclogo.svg',
          height: 38.h,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text('DocDoc', style: TextStyles.font24BlackBold),
      ],
    );
  }
}
