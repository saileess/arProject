part of 'dropdown_bloc.dart';

@freezed
class DropdownEvent with _$DropdownEvent {
  const factory DropdownEvent.started() = _Started;
  const factory DropdownEvent.dropdown() = _Dropdown;
}