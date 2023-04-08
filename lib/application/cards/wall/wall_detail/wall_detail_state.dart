part of 'wall_detail_bloc.dart';

@freezed
class WallDetailState with _$WallDetailState {
  const factory WallDetailState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required String errorMessage,
    required String wallID,
    required WallRepository wallRepository,
    required AppStateNotifier appStateNotifier,
    WallDto? wallDto,

  }) = _WallDetailState;
  factory WallDetailState.initial({
    required String wallID,
    required AppStateNotifier appStateNotifier,
  }) =>
      WallDetailState(
        isFailed: false,
        isLoading: true,
        isSuccess: false,
        wallID: wallID,
        errorMessage: '',
        wallRepository: IWallRepository(),
        appStateNotifier: appStateNotifier,
      );
}