import 'package:flutter/material.dart';
import '../constant/app_size_manager.dart';

Widget buildCustomButton(
    {required BuildContext context,
    required double width,
    double height = AppSize.size40,
    required String buttonName,
    required void Function()? onPressed}) {
  return ElevatedButton(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(
        Size(
          width,
          height,
        ),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      buttonName,
      style: Theme.of(context).textTheme.headline3,
    ),
  );
}
