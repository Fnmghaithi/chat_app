import 'package:chat_app/common/utils/colors.dart';
import 'package:flutter/material.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read Our ',
          style: TextStyle(
            color: CustomColors.greyDark,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy. ',
              style: TextStyle(
                color: CustomColors.blueDark,
              ),
            ),
            TextSpan(
              text: 'Tap "Agree and continue" to accept the ',
            ),
            TextSpan(
              text: 'Terms of Services.',
              style: TextStyle(
                color: CustomColors.blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
