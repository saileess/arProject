part of 'logout_bloc.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState({
    required AuthRepository authRepository,
    required bool isLoading,
    required bool isLoggedOut,
    required AppStateNotifier appStateNotifier,
  }) = _LogoutState;
  factory LogoutState.initial({required AppStateNotifier appStateNotifier}) =>
      LogoutState(
        authRepository: IAuthRepository(),
        isLoading: false,
        isLoggedOut: false,
        appStateNotifier: appStateNotifier,
      );
}