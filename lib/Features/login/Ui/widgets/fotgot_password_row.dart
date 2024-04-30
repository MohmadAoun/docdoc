import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Theming/font_styles.dart';

class ForgotPasswordRow extends StatelessWidget {
  const ForgotPasswordRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            Text(
              'Remember me',
              style: TextStyles.font12MediumGrayRegular,
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            mouseCursor: MaterialStateMouseCursor.clickable,
            style: TextStyles.font12BlueRegular,
            text: 'Forgot Password?',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('test');
              },
          ),
        ),
      ],
    );
  }
}
