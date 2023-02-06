import 'package:chat_app/common/utils/colors.dart';
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
                  SizedBox(
                    height: 42,
                    width: MediaQuery.of(context).size.width - 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.greenDark,
                        foregroundColor: CustomColors.backgroundDark,
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'AGREE AND CONTINUE',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Material(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
