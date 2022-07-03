import 'package:flutter/material.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/assets_manager.dart';
import '../../../resources/constant/color_manager.dart';
import '../../../resources/constant/strings_manager.dart';
import 'build_rating_widget.dart';

class Appointments extends StatelessWidget {
  const Appointments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.size335,
      height: AppSize.size90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: AppSize.size63,
            height: AppSize.size63,
            child: CircleAvatar(
              backgroundColor: ColorManager.white,
              child: Image(
                image: AssetImage(
                  AssetsManager.maskImage,
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppSize.size109,
            height: AppSize.size48,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringsManager.avocado,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  StringsManager.atAvopear,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppSize.size50,
            width: AppSize.size138,
            child: Column(
              children: [
                buildRatingWidget(context, StringsManager.monthlyRating),
                buildRatingWidget(context, StringsManager.yearlyRating),
              ],
            ),
          )
        ],
      ),
    );
  }
}
