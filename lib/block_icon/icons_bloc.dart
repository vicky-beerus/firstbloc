import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firstbloc/modal/icon_modals.dart';

part 'icons_event.dart';
part 'icons_state.dart';

class IconsBloc extends Bloc<IconsEvent, IconsState> {
  IconsBloc() : super(IconsInitial()) {
    on<LoadIconCounter>((event, emit) async {
      await Future.delayed(Duration(seconds: 1));
      emit(IconLoaded(listIcon: <IconModal>[]));
    });
    on<AddIcon>((event, emit) {
      if (state is IconLoaded) {
        final state = this.state as IconLoaded;
        emit(IconLoaded(
            listIcon: List.from(state.listIcon)..add(event.iconModal)));
      }
    });
    on<RemoveIcon>((event, emit) {
      if (state is IconLoaded) {
        final state = this.state as IconLoaded;
        emit(IconLoaded(
            listIcon: List.from(state.listIcon)
              ..remove(event.removeIconModal)));
      }
    });
  }
}
