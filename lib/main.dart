<<<<<<< HEAD
import 'package:diva/feature/verification_phone/verification_phone_screen.dart';
=======
import 'package:diva/features/sign_up/ui/sign_up_screen.dart';
>>>>>>> 50876f6579824daa9de6b48fad2d8fa57fa76a1a
import 'package:flutter/material.dart';
import 'features/login/ui/widgets/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      title: 'Flutter Demo',
=======
>>>>>>> 50876f6579824daa9de6b48fad2d8fa57fa76a1a
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
<<<<<<< HEAD
      home: VerificationPhoneScreen(),
=======
      home: const SignupScreen(),
>>>>>>> 50876f6579824daa9de6b48fad2d8fa57fa76a1a
    );
  }
}

