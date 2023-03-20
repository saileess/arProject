part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    UserDto? userDto,
    required bool isLoading,
    required bool isSuccessful,
    required bool isFailed,
    required bool isLoggedIn,
    required bool obscurePassword,
    required String errorEmail,
    required String errorPassword,
    required GlobalKey<FormState> formKey,
    required AppStateNotifier appStateNotifier,
    required String errorMessage,
    required AuthRepository authRepository,
    required TextEditingController userEmailController,
    required TextEditingController passwordController,
  }) = _LoginState;
  factory LoginState.initial({required AppStateNotifier appStateNotifier}) =>
      LoginState(
        errorPassword: '',
        errorEmail: '',
        obscurePassword: true,
        errorMessage: '',
        formKey: GlobalKey<FormState>(),
        isLoading: false,
        isSuccessful: false,
        appStateNotifier: appStateNotifier,
        isFailed: false,
        isLoggedIn: false,
        userEmailController: TextEditingController(),
        passwordController: TextEditingController(),
        authRepository: IAuthRepository(),
      );
}


extension LoginStateExtension on LoginState {
  LoginState get resetState {
    return copyWith(
      isLoading: false,
      isFailed: false,
      isSuccessful: false,
    );
  }
}