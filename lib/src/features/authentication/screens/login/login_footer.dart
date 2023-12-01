import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';
import '../signup/signup_screen.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {}, label: Text(tSignInWithGoogle),
            icon:Image(image: AssetImage(tGoogleLogo),width: 20,),
          ),
        ),
        SizedBox(height: 10,),
        TextButton(onPressed:()=>Get.to(()=>const SignUpScreen()), child:Text.rich(
            TextSpan(
                text: tDontHave,
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                    text: tSignUp,
                    style: TextStyle(color: Colors.blue),
                  )
                ]
            )
        )),
      ],
    );
  }
}
