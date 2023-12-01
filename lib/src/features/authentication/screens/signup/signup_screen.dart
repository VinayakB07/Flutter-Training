import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/src/common_widget/form/form_header.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeader(
                    image: tWelcomeScreenImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubtitle
                ),
                SignUpForm(),
            Column(
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
                TextButton(onPressed:()=>Get.to(()=>const LoginScreen()), child:Text.rich(
                    TextSpan(
                        text: tHaveAnAccount,
                        style: Theme.of(context).textTheme.bodyText1,
                        children: [
                          TextSpan(
                            text: tLogin,
                            style: TextStyle(color: Colors.blue),
                          )
                        ]
                    )
                )),
              ],
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
