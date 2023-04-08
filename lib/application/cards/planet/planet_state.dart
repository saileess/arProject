part of 'planet_bloc.dart';

@freezed
class PlanetState with _$PlanetState {
  const factory PlanetState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required String id,
    required String name,
    required String smallPara,
    required String readTime,
    required String errorMessage,
    required List<PlanetDto> ListOfPlanets,
    required PlanetRepository planetRepository,
    required AppStateNotifier appStateNotifier,
    required ScrollController scrollController,
    PlanetDto? planetDto,
  }) = _PlanetState;
  factory PlanetState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      PlanetState(
        isFailed: false,
        isLoading: true,
        isSuccess: false,
        name: '',
        smallPara: '',
        readTime: '',
        scrollController: ScrollController(),
        errorMessage: '',
        id: '',
        ListOfPlanets: [],
        planetRepository: IPlanetRepository(),
        appStateNotifier: appStateNotifier,
      );
}
