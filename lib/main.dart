import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/animated_splash/animated_splash_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  // FirebaseAuth.instance.authStateChanges().listen((user) {
  //   if (user == null) {
  //     Navigator.push(context,
  //         MaterialPageRoute(builder: (context) => VerificationPhoneScreen()));
  //   } else {
  //     // initialRoute = mapScreen;
  //   }
  // });


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnimatedSplashScreen(),
    );
  }
 }

