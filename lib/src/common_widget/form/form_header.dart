import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/image_string.dart';
import '../../constants/text_string.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image,title,subTitle;


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: height * 0.2,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}