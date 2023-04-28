import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/configs/app_config.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(LogoutState initialState) : super(initialState) {
    on<LogoutEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<_OnLogOutPressed>((event, emit) async{
        emit(state.copyWith(isLoading: true));
        final String response = await state.authRepository.logOut();
        if(response == 'user logged out'){
          emit(state.copyWith(isLoggedOut: true));
        }
      },);
  }
}
