
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:major_project/infrastructure/dtos/user/user_dto.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/configs/app_config.dart';
import '../../../domain/constants/string_constants.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';
import '../../../infrastructure/firebase_custom.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  FirebaseCustom fbAuth = FirebaseCustom();
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<_CallResetState>((event, emit) {
      emit(state.resetState);
    });

    on<_OnEmailChanged>((event, emit) {
      emit(state.copyWith(
        isSuccessful: false,
        isFailed: false,
        errorEmail: '',
      ));
    });

    on<_OnPasswordChanged>((event, emit) {
      emit(state.copyWith(
        isSuccessful: false,
        isFailed: false,
        errorPassword: '',
      ));
    });

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_OnUserNameChanged>((event, emit) async {
      emit(state.copyWith(
        isSuccessful: false,
        isFailed: false,
        errorUsername: '',
      ));
    });

    on<_OnUserCollegeChanged>((event, emit) async {
      emit(state.copyWith(
        isSuccessful: false,
        isFailed: false,
        errorUserCollege: '',
      ));
    });



    on<_OnSignUpPressed>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final String userName =
          state.usernameController.text.toLowerCase().trim();
      final String password = state.passwordController.text;
      final String userEmail =
          state.userEmailController.text.toLowerCase().trim();
      final String userCollege =
          state.userCollegeController.text.toLowerCase().trim();

      if (userName.isEmpty || password.isEmpty || userEmail.isEmpty) {
        emit(
          state.copyWith(
            isLoading: false,
            isFailed: true,
            errorPassword: password.isEmpty ? ErrorConstants.requiredField : '',
            errorUsername: userName.isEmpty ? ErrorConstants.requiredField : '',
            errorEmail: userEmail.isEmpty ? ErrorConstants.requiredField : '',
          ),
        );
      } else {
        final Either<String, UserDto> response =
            await state.authRepository.signUp(
          email: userEmail,
          password: password,
          username: userName,
          college: userCollege,
        );

        response.fold((l) {
          emit(state.copyWith(
            isLoading: false,
            isFailed: true,
            errorMessage: l,
            isSuccessful: false,
          ));
        }, (r) {
          state.appStateNotifier.userDto = r;
          emit(state.copyWith(
            isLoading: false,
            isFailed: false,
            isSuccessful: true,
            userDto: r,
            errorMessage: 'Successfully Logged in!',
          ));
        });
      }
    });
  }
}
