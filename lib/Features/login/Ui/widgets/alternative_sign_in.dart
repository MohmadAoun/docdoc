import 'package:docdoc/Core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AlternativeSignIn extends StatelessWidget {
  const AlternativeSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: ColorsManager.lightestGray,
            shape: BoxShape.circle,
          ),
          width: 46.w,
          height: 46.h,
          padding: const EdgeInsets.all(6),
          child: SvgPicture.asset('assets/svgs/Google_Logo.svg'),
        ),
        Container(
          decoration: const BoxDecoration(
            color: ColorsManager.lightestGray,
            shape: BoxShape.circle,
          ),
          width: 46.w,
          height: 46.h,
          padding: const EdgeInsets.all(6),
          child: SvgPicture.asset('assets/svgs/Facebook_Logo.svg'),
        ),
        Container(
          decoration: const BoxDecoration(
            color: ColorsManager.lightestGray,
            shape: BoxShape.circle,
          ),
          width: 46.w,
          height: 46.h,
          padding: const EdgeInsets.all(6),
          child: SvgPicture.asset('assets/svgs/Apple_Logo.svg'),
        ),
      ],
    );
  }
}
