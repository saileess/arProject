part of 'planet_bloc.dart';

@freezed
class PlanetEvent with _$PlanetEvent {
  const factory PlanetEvent.fetchPlanets() = _FetchPlanets;

  const factory PlanetEvent.emitFromAnywhere({required PlanetState state}) =
      _EmitFromAnywhere;

}