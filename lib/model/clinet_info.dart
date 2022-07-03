import 'package:flutter/material.dart';
import 'package:gym_app/resources/constant/strings_manager.dart';
import 'package:gym_app/screen/rating_clinet/widget/clinet_info.dart';

class ClinetInfo {
  static const List<Widget> clinetInfo = [
    ClientInfo(
      text: StringsManager.height,
      infoText: StringsManager.heightInfo,
    ),
    ClientInfo(
      text: StringsManager.weight,
      infoText: StringsManager.weightInfo,
    ),
    ClientInfo(
      text: StringsManager.gender,
      infoText: StringsManager.genderInfo,
    ),
  ];
}
