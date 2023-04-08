
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:major_project/domain/wall/wall_repository.dart';
import 'package:major_project/infrastructure/dtos/wall_dto/wall_dto.dart';
import 'package:major_project/infrastructure/wall/i_wall_repository.dart';

import '../../../../domain/configs/app_config.dart';

part 'wall_detail_event.dart';
part 'wall_detail_state.dart';
part 'wall_detail_bloc.freezed.dart';

class WallDetailBloc extends Bloc<WallDetailEvent, WallDetailState> {
  WallDetailBloc(WallDetailState initState) : super(initState) {
    on<WallDetailEvent>((event, emit) {
    });

    on<_onLoad>((event, emit) async{
      emit(state.copyWith(isLoading: true));
      final res = await state.wallRepository.getWallDetailsByID(id: state.wallID);
      
      res.fold((l) {
        emit(state.copyWith(
          isLoading: false
        ));
      }, (res) {
        emit(state.copyWith(
          isLoading: false,
          wallDto: res

        ));
      });
    });
  }
}
