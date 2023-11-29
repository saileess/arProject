part of 'dropdown_bloc.dart';

@freezed
class DropdownState with _$DropdownState {
  const factory DropdownState({
  required bool expandDropdown,
  }) = _DropdownSate;

  factory DropdownState.initial() => DropdownState(expandDropdown: false);
}
