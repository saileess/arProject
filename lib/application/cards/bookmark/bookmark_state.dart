part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required String errorMessage,
    required AppStateNotifier appStateNotifier,
    required ScrollController scrollController,
    required PlanetRepository planetRepository,
    required List<PlanetDto> userBookmarkList,
    UserDto? userDto,
  }) = _BookmarkState;
  factory BookmarkState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      BookmarkState(
        isFailed: false,
        isLoading: true,
        isSuccess: false,
        userBookmarkList: [],
        errorMessage: '',
        userDto: appStateNotifier.userDto,
        scrollController: ScrollController(),
        appStateNotifier: appStateNotifier,
        planetRepository: IPlanetRepository()
      );
}
