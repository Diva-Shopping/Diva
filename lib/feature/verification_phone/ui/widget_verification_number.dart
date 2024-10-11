import 'package:diva/feature/home.dart';
import 'package:diva/feature/verification_phone/cubit/auth_phone_cubit.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class WidgetVerificationNumber extends StatelessWidget {
  WidgetVerificationNumber({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  final pinCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
          child: PinCodeTextField(
            controller: pinCodeController,
            appContext: context,
            pastedTextStyle: const TextStyle(
              color: Color.fromARGB(255, 226, 228, 226),
              fontWeight: FontWeight.bold,
            ),
            length: 6,
            obscureText: false,
            obscuringCharacter: '*',
            animationType: AnimationType.fade,
            validator: (v) {
              if (v!.length < 6) {
                return "I'm from validator";
              } else {
                return null;
              }
            },
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 50,
                fieldWidth: 50,
                selectedColor: Colors.black12,
                activeFillColor: Colors.white,
                // borderWidth: 9,
                inactiveFillColor: Colors.white),
            cursorColor: Colors.black,
            animationDuration: const Duration(milliseconds: 300),
            textStyle: const TextStyle(
              fontSize: 20,
              height: 1.6,
            ),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            boxShadows: const [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onCompleted: (v) {
              if (formKey.currentState!.validate()) {
                AuthPhoneCubit.get(context).submitOTP(v);
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeVerify()));
              }
              
            },
            // onTap: () {
            //   print("Pressed");
            // },
            onChanged: (value) {
              pinCodeController.text = value;
            },
            beforeTextPaste: (text) {
              // print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          )),
    );
  }
}
