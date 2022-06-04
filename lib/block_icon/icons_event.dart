part of 'icons_bloc.dart';

abstract class IconsEvent extends Equatable {
  const IconsEvent();
}

class LoadIconCounter extends IconsEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AddIcon extends IconsEvent {
  late IconModal iconModal;

  AddIcon({required this.iconModal});
  @override
  // TODO: implement props
  List<Object?> get props => [iconModal];
}

class RemoveIcon extends IconsEvent {
  late IconModal removeIconModal;

  RemoveIcon({required this.removeIconModal});

  @override
  // TODO: implement props
  List<Object?> get props => [removeIconModal];
}
