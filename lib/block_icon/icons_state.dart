part of 'icons_bloc.dart';

abstract class IconsState extends Equatable {
  const IconsState();
}

class IconsInitial extends IconsState {
  @override
  List<Object> get props => [];
}

class IconInitial extends IconsState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class IconLoaded extends IconsState {
  late List<IconModal> listIcon;

  IconLoaded({required this.listIcon});

  @override
  // TODO: implement props
  List<Object?> get props => [listIcon];
}
