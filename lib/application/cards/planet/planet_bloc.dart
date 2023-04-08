
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:major_project/domain/planet/planet_repository.dart';
import 'package:major_project/infrastructure/planet/i_planet_repository.dart';

import '../../../domain/configs/app_config.dart';
import '../../../infrastructure/dtos/planet_dto/planet_dto.dart';

part 'planet_event.dart';
part 'planet_state.dart';
part 'planet_bloc.freezed.dart';


class PlanetBloc extends Bloc<PlanetEvent, PlanetState> {
  PlanetBloc(PlanetState initState) : super(initState) {
    on<PlanetEvent>((event, emit) {});

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_FetchPlanets>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.planetRepository.getPlanetData();
      

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
          ListOfPlanets: res,
        ));
      });
    });

  }
}
