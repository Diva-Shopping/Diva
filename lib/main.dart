import 'package:diva/feature/verification_phone/ui/verification_phone_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const VerificationPhoneScreen(),
    );
  }
}
