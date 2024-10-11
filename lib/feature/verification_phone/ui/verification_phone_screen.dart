import 'package:diva/feature/verification_phone/ui/widget_verification_number.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerificationPhoneScreen extends StatefulWidget {
  const VerificationPhoneScreen({super.key});

  @override
  State<VerificationPhoneScreen> createState() =>
      _VerificationPhoneScreenState();
}

class _VerificationPhoneScreenState extends State<VerificationPhoneScreen> {
    FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    // codeVerify();
    super.initState();
  }
// //do func
//   Future codeVerify() async {

//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: '+249919283428',
//       timeout: Duration(seconds: 40),
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await auth.signInWithCredential(credential);
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         if (e.code == 'invalid-phone-number') {
//           print('The provided phone number is not valid.');
//         }
//       },
//       codeSent: (String verificationId, int? resendToken) async{
//         String smsCode = "123456";
//         PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
//             verificationId: verificationId, smsCode: smsCode);
//                 // Sign the user in (or link) with the credential
//           await auth.signInWithCredential(phoneAuthCredential); 
              
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {},
//     );
//   }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
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
            SizedBox(
              width: 210,
              height: 210,
              child: Image.asset('assets/images/verification_code.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('The Code will be sent to '),
                Text(
                  '+249-919-283-428',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //number pin entire
            // WidgetVerificationNumber(),
            WidgetVerificationNumber(),
            const SizedBox(height: 10),
            const Row(
              children: [Text('Resend Code in '), Text('20s')],
            ),
          ]),
        ),
      ),
    );
  }
}
