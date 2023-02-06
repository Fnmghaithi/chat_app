import 'package:chat_app/common/utils/colors.dart';
import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/feature/welcome/widgets/language_button.dart';
import 'package:chat_app/feature/welcome/widgets/privacy_and_terms.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  const LanguageButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
