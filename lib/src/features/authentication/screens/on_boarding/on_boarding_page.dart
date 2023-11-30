import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/on_boarding_model.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Image(image: AssetImage(model.image),height: size.height*0.4,),
          Column(
            children: [
              Text(model.title,style: Theme.of(context).textTheme.headline3,),
              Text(model.subTitle,textAlign: TextAlign.center,),
            ],
          ),

          Text(model.counterText,style: Theme.of(context).textTheme.headline6,),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}
