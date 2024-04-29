import 'package:docdoc/Core/Theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndTitle extends StatelessWidget {
  const DoctorImageAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svgs/onBorading_background.svg',
          height: 443.h,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.45],
            ),
          ),
          child: Image(
            image: const AssetImage(
              'assets/images/onBorading_doctor.png',
            ),
            height: 491.h,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueBold,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
