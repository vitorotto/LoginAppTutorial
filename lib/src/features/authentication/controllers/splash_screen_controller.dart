import 'package:get/get.dart';
import 'package:login_app_tutorial/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
// import 'package:login_app_tutorial/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  @override
  void onReady() {
    super.onReady();
    startAnimation();
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.off(() => OnBoardingScreen());
  }
}
