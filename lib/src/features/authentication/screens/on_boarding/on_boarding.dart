import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/features/authentication/controllers/on_bording_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({super.key});
final onController=OnBoardingController();
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages:onController.pages,
            onPageChangeCallback:onController.onPageChange,
            liquidController: onController.controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 35,
              child: OutlinedButton(
                  onPressed:onController.animateToNextSlide,

                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  onPrimary: Colors.white
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.arrow_forward_ios),
                  decoration: BoxDecoration(
                    color: tDarkColor,
                    shape: BoxShape.circle,
                  ),
                ),
              )
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed:onController.skip ,
              child: Text('Skip',style: TextStyle(color: Colors.grey),),
            ),
          ),
          Obx(
            ()=> Positioned(
              bottom: 10,
                child: AnimatedSmoothIndicator(
                    activeIndex:onController.currentPage.value ,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5,
                  ),
                )

            ),
          )
        ],
      ),
    );
  }


}


