import 'package:diva/feature/verification_phone/widget_Verification_number.dart';
import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsetsDirectional.all(20),
        alignment: AlignmentDirectional.topCenter,
      child: Column(
        children: [
            Text(
              'Verification Code',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: 240,
              height: 240,
              child: Image.asset('image/verification_code.png'),
            ),
            SizedBox(
              height: 20,
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
              height: 15,
            ),
            //number pin entire
            WidgetVerificationNumber(),
            SizedBox(height: 20),
          Row(
            children: [
              Text('Resend Code in '), 
              Text('20s')],
          ),
          ]),
    );
  }
}