
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/configs/app_config.dart';
import '../../../domain/constants/string_constants.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';
import '../../../infrastructure/user/user_dto.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<_CallResetState>((event, emit) {
      emit(state.resetState);
    });

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

        on<_OnEmailChanged>((event, emit) {
      emit(state.copyWith(
        isFailed: false,
        isLoading: false,
        errorEmail: '',
        isSuccessful: false,
      ));
    });

    on<_OnPasswordChanged>((event, emit) {
      emit(state.copyWith(
        isFailed: false,
        isLoading: false,
        errorPassword: '',
        isSuccessful: false,
      ));
    });


on<_SignInWithGoogle>((event, emit) async{
  
  emit(state.copyWith(isLoading: true));

      try {
        final Either<String, UserDto> response =
            await state.authRepository.signInWithGoogle();

        response.fold((l) {
          print('failed');
          emit(state.copyWith(
            isFailed: true,
            isLoading: false,
            isSuccessful: false,
            errorMessage: l,
          ));
        }, (r) {
          print('success');
          add(LoginEvent.emitFromAnywhere(
              state: state.copyWith(
            isFailed: false,
            errorMessage: 'success',
            isLoading: false,
            isSuccessful: true,
            userDto: r
          )));
        });
      } catch (e) {
        emit(
          state.copyWith(
            isFailed: true,
            isLoading: false,
            isSuccessful: false,
            errorMessage: ErrorConstants.failedGoogleLogin,
          ),
        );
      }
},);


    on<_OnLoginPressed>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final String email = state.userEmailController.text;
      final String password = state.passwordController.text;

      final Either<String, UserDto> res =
          await state.authRepository.login(email: email, password: password);

      res.fold((l) {
        emit(state.copyWith(
          isFailed: true,
          isLoading: false,
          isSuccessful: false,
          errorMessage: l,
        ));
      }, (r) async {
        print(r);
        add(LoginEvent.emitFromAnywhere(
            state: state.copyWith(
          isFailed: false,
          errorMessage: 'error not here',
          isLoading: false,
          userDto: r,
          isSuccessful: true,
        )));
      });
    });
  }
}
