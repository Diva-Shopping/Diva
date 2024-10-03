import 'package:diva/feature/verification_phone/widget_verification_number.dart';
import 'package:flutter/material.dart';

class VerificationPhoneScreen extends StatelessWidget {
  const VerificationPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.only(top:10,),
                  child: Text(
                    'Verification Code',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // SizedBox(
                //   height: 7,
                // ),
                Container(
                  width: 210,
                  height: 210,
                  child: Image.asset('assets/images/verification_code.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('The Code will be sent to '),
                    Text(
                      '+20-102-000-3000',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //number pin entire
                // WidgetVerificationNumber(),
                WidgetVerificationNumber(),
                SizedBox(height: 10),
              Row(
                children: [
                  Text('Resend Code in '), 
                  Text('20s')],
              ),
              ]),
        ),
      ),
    );
  }
}