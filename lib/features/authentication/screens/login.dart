import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unitask/common/styles/spacing_styles.dart';
import 'package:unitask/features/authentication/screens/signup.dart';
import 'package:unitask/utils/constants/image_settings.dart';
import 'package:unitask/utils/constants/sizes.dart';
import 'package:unitask/utils/constants/text_strings.dart';
import 'package:unitask/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: UTextSpacingStyle.paddingAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo, Title, Subtitle
              Column(
                children: [
                  Image(
                    image: AssetImage(
                        dark ? UImages.darkAppLogo : UImages.lightAppLogo),
                    height: 250,
                  ),
                  Text(
                    UTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    UTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: USizes.sm),
                ],
              ),

              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: USizes.spaceBtwSections),
                  child: Column(
                    children: [
                      // email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: UTexts.email,
                        ),
                      ),
                      const SizedBox(height: USizes.spaceBtwInputFields),

                      // password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: UTexts.password,
                          suffixIcon: Icon(
                            Iconsax.eye_slash,
                          ),
                        ),
                      ),
                      const SizedBox(height: USizes.spaceBtwInputFields / 2),

                      // Remember and forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember me
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {
                                  // set the value to false
                                  value = false;
                                },
                              ),
                              const Text(UTexts.rememberMe),
                            ],
                          ),

                          /// Forgot password
                          TextButton(
                            onPressed: () {},
                            child: const Text(UTexts.forgotPassword),
                          ),
                        ],
                      ),

                      const SizedBox(height: USizes.spaceBtwSections),

                      // Sign In button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(UTexts.login),
                        ),
                      ),

                      // Create Account button
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            //open the create account screen
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const SignUpScreen();
                              },
                            ));
                          },
                          child: const Text(UTexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
