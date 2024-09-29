import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/app_form_feild.dart';
import '../../../../core/widgets/app_icons.dart';
import '../../../../core/widgets/app_text_button.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(children: [
            const SizedBox(height: 20),

            const Text("Welcome back",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Libre Baskerville',
                    fontWeight: FontWeight.w400)),
            const SizedBox(height: 20),
            Image.asset('assets/Mobile login-pana 1.png',width: 200,height: 200,),
            const AddFormField(
              hintText: ' E-mail / phone number ',
            ),
            const AddFormField(
              hintText: ' Password ',
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFff1768),
                    ),
                  ),
                ),
              ],
            ),
            const AppTextButton(),
            const SizedBox(height: 20),
            const AppIconsButton(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Already have an account ?",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Sing In ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFff1768),
                  ),
                ),

              ],
            ),

          ]),
        ),
      ),
    );
  }
}
