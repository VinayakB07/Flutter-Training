import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import '../../constants/image_string.dart';
import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
 TFadeInAnimation({
    super.key,
   this.animatePosition,
  required this.durationInMs,
   required this.child,
  });

  final controller=Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> AnimatedPositioned(
          duration:  Duration(milliseconds: durationInMs),
          top:controller.animate.value ?animatePosition!.topAfter :animatePosition!.topBefore,
          left:controller.animate.value ? animatePosition!.leftAfter :animatePosition!.leftBefore,
              bottom:controller.animate.value ? animatePosition!.bottomAfter :animatePosition!.bottomBefore,
              right:controller.animate.value ?animatePosition!.rightAfter :animatePosition!.rightBefore,
              child:AnimatedOpacity(
                  duration:  Duration(milliseconds: durationInMs),
                  opacity: controller.animate.value ? 1 : 0,
                  child: child))
    );
  }
}
