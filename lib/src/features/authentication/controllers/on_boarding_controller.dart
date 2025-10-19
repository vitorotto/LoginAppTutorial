import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:login_app_tutorial/src/constants/colors.dart';
import 'package:login_app_tutorial/src/constants/image_strings.dart';
import 'package:login_app_tutorial/src/constants/text_strings.dart';
import 'package:login_app_tutorial/src/features/authentication/models/on_boarding_model.dart';

import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: vOnBoardingImg1,
        title: vOnBoardingTitle1,
        subTitle: vOnBoardingSubTitle1,
        counterText: vOnBoardingCounter1,
        bgColor: vOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: vOnBoardingImg2,
        title: vOnBoardingTitle2,
        subTitle: vOnBoardingSubTitle2,
        counterText: vOnBoardingCounter2,
        bgColor: vOnBoardingPage2Color,
      ),
    ),
  ];

  onPageChange(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 1);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
