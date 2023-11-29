import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_event.dart';
part 'dropdown_state.dart';
part 'dropdown_bloc.freezed.dart';

class DropdownBloc extends Bloc<DropdownEvent, DropdownState> {
  DropdownBloc(DropdownState initialState) : super(initialState) {
    on<DropdownEvent>((event, emit) {
      // TODO: implement event handler
    });

  on<_Dropdown>((event, emit) {
    emit(state.copyWith(expandDropdown: !state.expandDropdown));
  });
  }
}
