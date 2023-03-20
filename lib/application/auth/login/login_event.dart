part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
    const factory LoginEvent.onEmailChanged() = _OnEmailChanged;
  const factory LoginEvent.onPasswordChanged() = _OnPasswordChanged;

  const factory LoginEvent.onLoginPressed() = _OnLoginPressed;

  const factory LoginEvent.callResetState() = _CallResetState;

  const factory LoginEvent.signInWithGoogle() = _SignInWithGoogle;

  const factory LoginEvent.emitFromAnywhere({required LoginState state}) =
      _EmitFromAnywhere;
}