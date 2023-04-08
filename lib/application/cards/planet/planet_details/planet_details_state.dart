part of 'planet_details_bloc.dart';

@freezed
class PlanetDetailsState with _$PlanetDetailsState {
  const factory PlanetDetailsState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required String errorMessage,
    required String planetID,
    required bool isBookmark,
    required bool isUpdatingBookmark,
    required List<String> userBoomarkList,
    required PlanetRepository planetRepository,
    required AppStateNotifier appStateNotifier,
    required AuthRepository authRepository,
    required bool isUserUpdated,
    PlanetDto? planetDto,
    UserDto? userDto,

  }) = _PlanetDetailsState;
  factory PlanetDetailsState.initial({
    required String planetID,
    required AppStateNotifier appStateNotifier,
  }) =>
      PlanetDetailsState(
        isFailed: false,
        isLoading: true,
        isSuccess: false,
        planetID: planetID,
        errorMessage: '',
        isBookmark: false,
        isUserUpdated: false,
        isUpdatingBookmark: false,
        userBoomarkList: [],
        userDto: appStateNotifier.userDto,
        planetRepository: IPlanetRepository(),
        appStateNotifier: appStateNotifier,
        authRepository: IAuthRepository()
      );
}