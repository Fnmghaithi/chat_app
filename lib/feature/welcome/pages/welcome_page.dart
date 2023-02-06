import 'package:chat_app/common/utils/colors.dart';
import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/feature/welcome/widgets/privacy_and_terms.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundDark,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  child: Image.asset(
                    'assets/images/circle.png',
                    color: CustomColors.greenDark,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Welcome to WhatsApp',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const PrivacyAndTerms(),
                  CustomElevatedButton(
                    text: 'AGREE AND CONTINUE',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  LanguageButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF182229),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: const Color(0xFF09141A),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: CustomColors.greenDark,
              ),
              SizedBox(width: 10),
              Text(
                'English',
                style: TextStyle(
                  color: CustomColors.greenDark,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down,
                color: CustomColors.greenDark,
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
