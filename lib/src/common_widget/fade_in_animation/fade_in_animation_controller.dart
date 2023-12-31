import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';



class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find=>Get.find();

  RxBool animate=false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value=false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.to(welcome());

  }
  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value=true;
  }
}