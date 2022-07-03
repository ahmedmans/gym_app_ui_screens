import 'package:flutter/material.dart';
import '../../../resources/constant/color_manager.dart';
import '../../../resources/constant/strings_manager.dart';

Widget buildRatingWidget(BuildContext context, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: text == StringsManager.monthlyRating
            ? Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: ColorManager.pinke)
            : Theme.of(context).textTheme.subtitle1,
      ),
      Text(
        StringsManager.ratingCount,
        style: text == StringsManager.monthlyRating
            ? Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: ColorManager.pinke)
            : Theme.of(context).textTheme.headline6,
      ),
    ],
  );
}
