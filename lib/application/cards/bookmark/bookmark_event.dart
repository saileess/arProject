part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.started() = _Started;
  const factory BookmarkEvent.onLoad() = _OnLoad;
  const factory BookmarkEvent.emitFromAnywhere({required BookmarkState state}) =
      _EmitFromAnywhere;

}