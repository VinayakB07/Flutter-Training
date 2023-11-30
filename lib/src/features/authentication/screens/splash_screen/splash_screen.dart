import 'package:flutter/material.dart';
import 'package:login_app/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/common_widget/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';

import '../../../../common_widget/fade_in_animation/animation_design.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller=Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 1600, animatePosition: TAnimatePosition(
              topAfter: 0,topBefore: -30,leftAfter: 0,leftBefore: -30
            ),
              child: Image(image: AssetImage(tSplashTopIcon),height: 100,),
            ),
            TFadeInAnimation(
              durationInMs: 2000, animatePosition: TAnimatePosition(
                topAfter: 80,topBefore: 80,leftAfter:tDefaultSize ,leftBefore: -80
            ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tAppName, style: Theme
                      .of(context)
                      .textTheme
                      .headline3,),
                  Text(tAppTagLine, style: Theme
                      .of(context)
                      .textTheme
                      .headline2,),
                ],
              ),
            ),
            TFadeInAnimation(
              durationInMs: 1600, animatePosition: TAnimatePosition(
                bottomAfter: 80,bottomBefore: 0,leftAfter: 20,leftBefore: 20
            ),
              child: Image(
                image: AssetImage(tSplashImage), height: 300,),
            ),
            TFadeInAnimation(
              durationInMs: 1600, animatePosition: TAnimatePosition(
                bottomAfter: 40,bottomBefore: 0,rightAfter: tDefaultSize,rightBefore:tDefaultSize
            ),
              child:Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
            ),

          ],
        ),
      ),
    );
  }


}

