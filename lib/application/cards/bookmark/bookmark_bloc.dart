import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:major_project/infrastructure/dtos/user/user_dto.dart';

import '../../../domain/configs/app_config.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  BookmarkBloc(BookmarkState initState) : super(initState) {
    on<BookmarkEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_OnLoad>((event, emit) {
      
    });
  }
}
