part of 'wall_bloc.dart';

@freezed
class WallState with _$WallState {
  const factory WallState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required String errorMessage,
    required List<WallDto> ListOfTopics,
    required WallRepository wallRepository,
    required AppStateNotifier appStateNotifier,
    required ScrollController scrollController,
    WallDto? wallDto,
  }) = _WallState;
  factory WallState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      WallState(
        isFailed: false,
        isLoading: true,
        isSuccess: false,
        scrollController: ScrollController(),
        errorMessage: '',
        ListOfTopics: [],
        wallRepository: IWallRepository(),
        appStateNotifier: appStateNotifier,
      );
}
