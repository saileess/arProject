
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:major_project/domain/planet/planet_repository.dart';
import 'package:major_project/infrastructure/dtos/planet_dto/planet_dto.dart';
import 'package:major_project/infrastructure/dtos/user/user_dto.dart';
import 'package:major_project/infrastructure/planet/i_planet_repository.dart';

import '../../../domain/configs/app_config.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  BookmarkBloc(BookmarkState initState) : super(initState) {
    on<BookmarkEvent>((event, emit) {
    });
    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_OnLoad>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.planetRepository.fetchListofBookmarks(uid: state.userDto!.id);
      

if(res.isNotEmpty){
  emit(state.copyWith(
    isLoading: false,
    userBookmarkList: res,
  ));
}else{
  emit(state.copyWith(
    isLoading: false,
  ));
}

    });

  }
}
