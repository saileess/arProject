part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required AppStateNotifier appStateNotifier,
    required ScrollController scrollController,
    UserDto? userDto,
  }) = _BookmarkState;
  factory BookmarkState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      BookmarkState(
        isFailed: false,
        isLoading: true,
        isSuccess: false,
        scrollController: ScrollController(),
        appStateNotifier: appStateNotifier,
      );
}
