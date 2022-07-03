import 'package:flutter/material.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/strings_manager.dart';

Widget buildTimeFiledWidget(
  TextEditingController controller,
  BuildContext context,
  void Function()? onTap,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: AppSize.size100,
      height: AppSize.size40,
      child: TextField(
        keyboardType: TextInputType.datetime,
        textAlign: TextAlign.center,
        controller: controller,
        style: Theme.of(context).textTheme.headline2,
        decoration: const InputDecoration(
          hintText: StringsManager.addTime,
        ),
        onTap: onTap,
      ),
    ),
  );
}
