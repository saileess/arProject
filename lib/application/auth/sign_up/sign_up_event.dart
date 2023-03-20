part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.onSignUpPressed() = _OnSignUpPressed;
  const factory SignUpEvent.onEmailChanged() = _OnEmailChanged;
  const factory SignUpEvent.onPasswordChanged() = _OnPasswordChanged;

  const factory SignUpEvent.onUsernameChanged() = _OnUserNameChanged;
  const factory SignUpEvent.onUserCollegeChanged() = _OnUserCollegeChanged;

  const factory SignUpEvent.callResetState() = _CallResetState;

  const factory SignUpEvent.signUpWithGoogle() = _SignUpWithGoogle;

  const factory SignUpEvent.emitFromAnywhere({required SignUpState state}) =
      _EmitFromAnywhere;
}