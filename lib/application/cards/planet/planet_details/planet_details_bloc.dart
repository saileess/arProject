import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:major_project/infrastructure/planet/i_planet_repository.dart';

import '../../../../domain/configs/app_config.dart';
import '../../../../domain/planet/planet_repository.dart';
import '../../../../infrastructure/dtos/planet_dto/planet_dto.dart';
import '../../../../infrastructure/dtos/user/user_dto.dart';

part 'planet_details_event.dart';
part 'planet_details_state.dart';
part 'planet_details_bloc.freezed.dart';

class PlanetDetailsBloc extends Bloc<PlanetDetailsEvent, PlanetDetailsState> {
  PlanetDetailsBloc(PlanetDetailsState initState) : super(initState) {
    on<_onLoad>((event, emit) async{
      emit(state.copyWith(isLoading: true));
      final res = await state.planetRepository.getPlanetDetailsByID(id: state.planetID);
      
      res.fold((l) {
        emit(state.copyWith(
          isLoading: false
        ));
      }, (res) {
        emit(state.copyWith(
          isLoading: false,
          planetDto: res,

        ));
      });
    });

    on<_OnClickBookmark>((event, emit)async{
        emit(state.copyWith(isUpdatingBookmark: true));

      final res = await state.planetRepository.addToBookmark(id: state.planetID);
      
      if(res.contains(state.planetID)){
        emit(state.copyWith(isBookmark: true, isUpdatingBookmark: false));
      }else{
        emit(state.copyWith(isBookmark: false, isUpdatingBookmark: false));

      }
    } );
  }
}
