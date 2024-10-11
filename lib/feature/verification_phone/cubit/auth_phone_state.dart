abstract class AuthPhoneState {}

class AuthInitial extends AuthPhoneState {}

class LoadingState extends AuthPhoneState {}

class ErrorState extends AuthPhoneState {
  final String errorMsg;

  ErrorState({required this.errorMsg});
}

class PhoneNumberSubmited extends AuthPhoneState{}

class PhoneNumberVerified extends AuthPhoneState{}