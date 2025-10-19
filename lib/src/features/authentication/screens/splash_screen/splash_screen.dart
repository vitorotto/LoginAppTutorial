import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_tutorial/src/constants/colors.dart';
import 'package:login_app_tutorial/src/constants/image_strings.dart';
import 'package:login_app_tutorial/src/constants/sizes.dart';
import 'package:login_app_tutorial/src/constants/text_strings.dart';
import 'package:login_app_tutorial/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? -40 : -100,
              left: splashController.animate.value ? -40 : -100,
              child: Image(image: AssetImage(vSplashImage)),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: 110,
              right: splashController.animate.value ? vDefaultSize : -100,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      vAppName,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: 110,
              left: splashController.animate.value ? vDefaultSize : -100,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vAppTagLine,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? -40 : -100,
              right: splashController.animate.value ? -40 : -100,
              child: Image(image: AssetImage(vSplashImage)),
            ),
          ),
          Positioned(
            bottom: 40,
            left: vDefaultSize,
            child: Container(
              width: vSplashContainerSize,
              height: vSplashContainerSize,
              decoration: BoxDecoration(
                color: vPrimaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
