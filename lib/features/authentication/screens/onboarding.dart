import "package:flutter/material.dart";
import 'package:iconsax/iconsax.dart';
import "package:get/get.dart";
import "package:unitask/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:unitask/utils/constants/colors.dart";
import "package:unitask/utils/constants/image_settings.dart";
import "package:unitask/utils/constants/sizes.dart";
import "package:unitask/utils/constants/text_strings.dart";
import "package:unitask/utils/devices/device_utilities.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import "package:unitask/utils/helpers/helper_functions.dart";

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndex,
            scrollDirection: Axis.horizontal,
            children: const [
              OnBoardingPage(
                title: UTexts.onBoardingTitle1,
                subtitle: UTexts.onBoardingSubTitle1,
                image: UImages.onboarding1,
              ),
              OnBoardingPage(
                title: UTexts.onBoardingTitle2,
                subtitle: UTexts.onBoardingSubTitle2,
                image: UImages.onboarding2,
              ),
              OnBoardingPage(
                title: UTexts.onBoardingTitle3,
                subtitle: UTexts.onBoardingSubTitle3,
                image: UImages.onboarding3,
              ),
            ],
          ),

          // Skip Button
          Positioned(
            top: UDeviceUtilities.getAppBarHeight(),
            right: USizes.defaultSpace,
            child: TextButton(
              onPressed: OnBoardingController.instance.skipPage,
              child: const Text("Skip"),
            ),
          ),

          // Dot Navigation
          const OnBoardingDotNavigation(),

          // Next Button
          const OnBoardingNavigationButton()
        ],
      ),
    );
  }
}

class OnBoardingNavigationButton extends StatelessWidget {
  const OnBoardingNavigationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Positioned(
      right: USizes.defaultSpace,
      bottom: UDeviceUtilities.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(USizes.defaultSpace),
          backgroundColor: dark ? UColors.primaryColor : Colors.black,
        ),
        onPressed: OnBoardingController.instance.nextPage,
        child: const Icon(Iconsax.arrow_right_1),
      ),
    );
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    final controller = Get.find<OnBoardingController>();

    return Positioned(
      bottom: UDeviceUtilities.getBottomNavigationBarHeight() + 25,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6,
          activeDotColor: dark ? UColors.light : UColors.dark,
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(USizes.defaultSpace),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image(
            width: 500,
            height: 500,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: USizes.spaceBtwItems,
          ),
          Text(subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium)
        ],
      ),
    );
  }
}
