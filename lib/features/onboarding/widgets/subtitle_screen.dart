import 'package:flutter/material.dart';

import '../../../core/theme/fonts/text_styles.dart';

class SubtitleScreen extends StatelessWidget {
  const SubtitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: 'Log in or create a new account to\n join the',
              style: TextStyles.font20blackregular
          ),
          TextSpan(
              text: " Nibras ",
              style: TextStyles.font20blackbold
          ),
          TextSpan(
              text: 'world',
              style: TextStyles.font20blackregular
          ),
        ],
      ),
    );
  }
}
