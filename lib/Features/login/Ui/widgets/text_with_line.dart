import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Theming/colors.dart';
import '../../../../Core/Theming/font_styles.dart';

class TextWithLine extends StatelessWidget {
  const TextWithLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DottedLine(
          dashColor: ColorsManager.mediumGray,
          dashGapLength: 0,
        ),
        Container(
          color: Colors.white,
          child: Text(
            'Or sign in with',
            style: TextStyles.font12MediumGrayRegular,
          ),
        ),
      ],
    );
  }
}
