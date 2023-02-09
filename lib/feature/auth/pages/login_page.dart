import 'package:chat_app/common/helper/show_alert_dialog.dart';
import 'package:chat_app/common/utils/colors.dart';
import 'package:chat_app/common/widgets/custom_elevated_button.dart';
import 'package:chat_app/common/widgets/custom_icon_button.dart';
import 'package:chat_app/extension/custom_theme_extension.dart';
import 'package:chat_app/feature/auth/widgets/custom_text_field.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Oman');
    countryCodeController = TextEditingController(text: '968');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  showCountryCodePicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['OM'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: Theme.of(context).backgroundColor,
        flagSize: 22,
        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(color: context.theme.greyColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(
            color: context.theme.greyColor,
          ),
          prefixIcon: const Icon(
            Icons.language,
            color: CustomColors.greenDark,
          ),
          hintText: 'Search Country Code or Name',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.greyColor!.withOpacity(0.2),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomColors.greenDark,
            ),
          ),
        ),
      ),
      onSelect: (country) {
        countryNameController.text = country.name;
        countryCodeController.text = country.phoneCode;
      },
    );
  }

  sendCodeToPhone() {
    final phone = phoneNumberController.text;
    final name = countryNameController.text;

    if (phone.isEmpty) {
      return showAlertDialog(
          context: context, message: 'Please enter your phone number.');
    } else if (phone.length < 8) {
      return showAlertDialog(
          context: context,
          message:
              'The phone number you entered is too short for the country: $name. \n\nInclude your area code if you haven\'t');
    } else if (phone.length > 9) {
      return showAlertDialog(
          context: context,
          message:
              'The phone number you entered is too long for the country: $name');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter your phone number',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'WhatsApp will need to verify your phone number. ',
                  style: TextStyle(
                    color: context.theme.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: 'What\'s my number?',
                      style: TextStyle(
                        color: context.theme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: CustomTextField(
                controller: countryNameController,
                onTap: showCountryCodePicker,
                readOnly: true,
                suffixIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: CustomColors.greenDark,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 70,
                    child: CustomTextField(
                      onTap: showCountryCodePicker,
                      controller: countryCodeController,
                      prefixText: '+',
                      readOnly: true,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      onTap: () {},
                      controller: phoneNumberController,
                      hintText: 'Phone Number',
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Carrier charges may apply',
              style: TextStyle(color: context.theme.greyColor),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: sendCodeToPhone,
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
