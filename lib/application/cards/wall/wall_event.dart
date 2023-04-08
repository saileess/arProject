part of 'wall_bloc.dart';

@freezed
class WallEvent with _$WallEvent {
  const factory WallEvent.onload() = _OnLoad;


  const factory WallEvent.emitFromAnywhere({required WallState state}) =
      _EmitFromAnywhere;
}