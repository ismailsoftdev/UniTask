import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unitask/features/authentication/screens/login.dart';
import 'package:unitask/features/authentication/screens/onboarding.dart';
import 'package:unitask/utils/theme/theme.dart';

/// -- Use this class to setup themes, initial bindings, any animation and much more

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
