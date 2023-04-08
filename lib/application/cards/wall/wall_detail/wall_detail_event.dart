part of 'wall_detail_bloc.dart';

@freezed
class WallDetailEvent with _$WallDetailEvent {
  const factory WallDetailEvent.emitFromAnywhere({required WallDetailState state}) =
      _EmitFromAnywhere;

  const factory WallDetailEvent.onLoad() =
      _onLoad;
}