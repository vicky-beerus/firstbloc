import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class IconModal extends Equatable {
  String? iconName;
  String? iconId;
  Icon? icon;

  IconModal({this.icon, this.iconId, this.iconName});

  @override
  List<Object?> get props => [iconName, iconId, icon];

  static List<IconModal> iconModal = [
    IconModal(
        icon: Icon(
          Icons.location_history,
        ),
        iconId: "1",
        iconName: "icon_one"),
    IconModal(
        icon: Icon(
          Icons.accessibility,
          size: 40,
        ),
        iconId: "2",
        iconName: "icon_two"),
    IconModal(
        icon: Icon(
          Icons.adb_outlined,
          size: 40,
        ),
        iconId: "3",
        iconName: "icon_three")
  ];
}
