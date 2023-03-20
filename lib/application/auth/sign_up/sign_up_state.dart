part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isLoading,
    required bool isSuccessful,
    required bool isFailed,
    required bool obscurePassword,
    required bool obscureConfirmPassword,
    required String errorUsername,
    required String errorEmail,
    required String errorPassword,
    required String errorMessage,
    required String errorUserCollege,
    required GlobalKey<FormState> formKey,
    required AppStateNotifier appStateNotifier,
    required AuthRepository authRepository,
    required TextEditingController usernameController,
    required TextEditingController userEmailController,
    required TextEditingController userCollegeController,
    required TextEditingController passwordController,
    UserDto? userDto,
  }) = _SignUpState;
  factory SignUpState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      SignUpState(
        errorPassword: '',
        errorUsername: '',
        errorUserCollege: '',

        obscurePassword: true,
        obscureConfirmPassword: true,
        errorEmail: '',
        errorMessage: '',
        formKey: GlobalKey<FormState>(),
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        usernameController: TextEditingController(),
        userEmailController: TextEditingController(),
        passwordController: TextEditingController(),
        userCollegeController: TextEditingController(),
        authRepository: IAuthRepository(),
        
      );
}


extension SignUpStateExtension on SignUpState{
  SignUpState get resetState{
    return copyWith(
      isLoading: false,
      isFailed: false,
      isSuccessful: false,
    );
  }
}