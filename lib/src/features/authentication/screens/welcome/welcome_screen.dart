import 'package:flutter/material.dart';
import 'package:login_app/src/common_widget/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../common_widget/fade_in_animation/fade_in_animation_controller.dart';

class welcome extends StatelessWidget {
  welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(FadeInAnimationController());
    controller.startAnimation();
    var height = MediaQuery.of(context).size.height;
    var brightness=MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness==Brightness.dark;

    return Scaffold(
      backgroundColor:isDarkMode ? tSecondaryColor:tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animatePosition: TAnimatePosition(
              bottomAfter: 0,bottomBefore: -100
                ,leftBefore: 0,leftAfter: 0,rightAfter: 0,rightBefore: 0,topBefore: 0,topAfter: 0
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(tWelcomeScreenImage),
                    height: height * 0.4,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeScreenText,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tWelcomeScreenSubtitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: ()=>Get.to(()=>const LoginScreen()),
                          child: Text(tLogin.toUpperCase()),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed:()=>Get.to(()=>const SignUpScreen()),
                          child: Text(tSignUp.toUpperCase()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
