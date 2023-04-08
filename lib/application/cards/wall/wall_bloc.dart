
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:major_project/infrastructure/wall/i_wall_repository.dart';

import '../../../domain/configs/app_config.dart';
import '../../../domain/wall/wall_repository.dart';
import '../../../infrastructure/dtos/wall_dto/wall_dto.dart';

part 'wall_event.dart';
part 'wall_state.dart';
part 'wall_bloc.freezed.dart';

class WallBloc extends Bloc<WallEvent, WallState> {
  WallBloc(WallState initState) : super(initState) {
    

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_OnLoad>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.wallRepository.getWallData();


      res.fold((l) {
        emit(state.copyWith(
          isLoading: true,
          isFailed: true,
          errorMessage: l,
          isSuccess: false
        ));
      }, (res) {
        emit(state.copyWith(
          isLoading: false,
          isFailed: false,
          errorMessage: '',
          ListOfTopics: res
        ));
      });
    });
  }
}
