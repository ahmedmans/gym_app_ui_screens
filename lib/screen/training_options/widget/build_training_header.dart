import 'package:flutter/material.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/color_manager.dart';
import '../../../resources/constant/strings_manager.dart';

Column buildTrainingHeader(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.padding16,
        ),
        child: Center(
          child: Container(
            width: AppSize.size90,
            height: AppSize.size90,
            decoration: BoxDecoration(
              color: ColorManager.lightGray,
              shape: BoxShape.circle,
              border: Border.all(
                width: AppSize.size1_5,
                color: ColorManager.pinke,
              ),
            ),
          ),
        ),
      ),
      Center(
        child: Text(
          StringsManager.anjiali,
          style: Theme.of(context).textTheme.overline,
        ),
      ),
      const SizedBox(
        height: AppSize.size10,
      ),
      Center(
        child: Text(
          StringsManager.pushpanjali,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: AppPadding.padding10,
          left: AppPadding.padding20,
          bottom: AppPadding.padding10,
        ),
        child: Text(
          StringsManager.dayOff,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    ],
  );
}
