import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class WidgetVerificationNumber extends StatelessWidget {
   WidgetVerificationNumber({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
          child: PinCodeTextField(
            appContext: context,
            pastedTextStyle: TextStyle(
              color: const Color.fromARGB(255, 226, 228, 226),
              fontWeight: FontWeight.bold,
            ),
            length: 4,

            obscureText: false,
            obscuringCharacter: '*',
            animationType: AnimationType.fade,
            // validator: (v) {
            //   // if (v.length < 3) {
            //   //   return "I'm from validator";
            //   // } else {
            //   //   return null;
            //   // }
            // },
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(15),
              fieldHeight: 50,
              fieldWidth: 50,
              activeFillColor: Colors.white,
              // borderWidth: 9,
              inactiveFillColor: Colors.white
            ),
            cursorColor: Colors.black,
            animationDuration: Duration(milliseconds: 300),
            textStyle: TextStyle(fontSize: 20, height: 1.6,),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            
            // errorAnimationController: ,
            // controller: textEditingController,
            keyboardType: TextInputType.number,
            boxShadows: [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onCompleted: (v) {
              print("Completed");
            },
            // onTap: () {
            //   print("Pressed");
            // },
            onChanged: (value) {
              print(value);
              // setState(() {
              //   currentText = value;
              // });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          )),
    );
  }
}
