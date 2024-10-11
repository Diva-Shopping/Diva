import 'package:diva/feature/verification_phone/cubit/auth_phone_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPhoneCubit extends Cubit<AuthPhoneState> {
  late String verificationId;

  AuthPhoneCubit() : super(AuthInitial());
  static AuthPhoneCubit get(context) => BlocProvider.of(context);
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> submitPhoneNumber() async {
    emit(LoadingState());

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+249919283428',
      timeout: const Duration(seconds: 20),
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  void verificationCompleted(PhoneAuthCredential credential) async {
    print('verificationCompleted');
    // await signIn(credential);
    await auth.signInWithCredential(credential);
  }

  void verificationFailed(FirebaseAuthException error) {
    print('verificationFailed : ${error.toString()}');
    emit(ErrorState(errorMsg: error.toString()));
  }

  void codeSent(String verificationId, int? resendToken) {
    print('codeSent');
    this.verificationId = verificationId;
    emit(PhoneNumberSubmited());
  }

  void codeAutoRetrievalTimeout(String verificationId) {
    print('codeAutoRetrievalTimeout');
  }

  Future<void> submitOTP(String otpCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: this.verificationId, smsCode: otpCode);
    await auth.signInWithCredential(credential);
    // await signIn(credential);
  }

//  Future<void> signIn(PhoneAuthCredential credential) async {
//     try {
//       await FirebaseAuth.instance.signInWithCredential(credential);
//       emit(PhoneNumberVerified());
//     } catch (error) {
//       emit(ErrorState(errorMsg: error.toString()));
//     }
//   }
}
