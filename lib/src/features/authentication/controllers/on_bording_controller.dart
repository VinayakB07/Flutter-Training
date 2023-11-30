import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_string.dart';
import '../models/on_boarding_model.dart';
import '../screens/on_boarding/on_boarding_page.dart';

class OnBoardingController extends GetxController{
  final controller =LiquidController();
  RxInt currentPage=0.obs;
  final pages=[
    OnBoardingPage(model: OnBoardingModel(
      image: tOnBoardingImage1,
      title: tOnBoardingTitlel,
      subTitle: tOnBoardingSubTitle1,
      counterText: tonBoardingCounter1,
      bgColor: tOnBoardingPage1Color,

    )),
    OnBoardingPage(model: OnBoardingModel(
      image: tOnBoardingImage2,
      title: tOnBoardingTitle2,
      subTitle: tOnBoardingSubTitle2,
      counterText: tOnBoardingCounter2,
      bgColor: tOnBoardingPage2Color,

    )),
    OnBoardingPage(model: OnBoardingModel(
      image: tOnBoardingImage3,
      title: tOnBoardingTitle3,
      subTitle: tOnBoardingSubTitle3,
      counterText: tonBoardingCounter3,
      bgColor: tOnBoardingPage3Color,

    )),
  ];
  onPageChange(int activePageIndex) {
    currentPage.value=activePageIndex;
  }
  skip()=>controller.jumpToPage(page: 2);

  animateToNextSlide(){
  int nextPage=controller.currentPage+1;
  controller.animateToPage(page: nextPage);
}
}