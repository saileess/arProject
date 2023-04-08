part of 'planet_details_bloc.dart';

@freezed
class PlanetDetailsEvent with _$PlanetDetailsEvent {
  const factory PlanetDetailsEvent.emitFromAnywhere({required PlanetDetailsState state}) =
      _EmitFromAnywhere;

  const factory PlanetDetailsEvent.onLoad() =
      _onLoad;
  const factory PlanetDetailsEvent.onClickBookmark() =
      _OnClickBookmark;

}