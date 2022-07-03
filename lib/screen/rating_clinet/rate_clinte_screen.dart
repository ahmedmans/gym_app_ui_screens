import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_app/model/clinet_info.dart';
import '../../resources/constant/app_size_manager.dart';
import '../../resources/constant/color_manager.dart';
import '../../resources/constant/strings_manager.dart';
import 'widget/appointments.dart';
import '../../resources/widget/build_custom_button.dart';
import '../../resources/widget/screen_body.dart';
import 'widget/clinet_info.dart';
import 'widget/rating_items.dart';

class RateClinetScreen extends StatefulWidget {
  const RateClinetScreen({Key? key}) : super(key: key);

  @override
  State<RateClinetScreen> createState() => _RateClinetScreenState();
}

class _RateClinetScreenState extends State<RateClinetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorManager.kPrimaryColor,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: ColorManager.kPrimaryColor,
        title: const Text('Rate Clinet'),
      ),
      body: ScreenBody(
        widget: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: AppPadding.padding16),
              child: Appointments(),
            ),
            const Divider(
              indent: AppSize.size16,
              endIndent: AppSize.size16,
              color: ColorManager.kSucnedColor,
              height: AppSize.size1_5,
            ),
            buildClinetInfo(context),
            const RatingItem(
              text: StringsManager.attendance,
            ),
            const RatingItem(
              text: StringsManager.completedRounds,
            ),
            const RatingItem(
              text: StringsManager.foodCommitment,
            ),
            const RatingItem(
              text: StringsManager.cardioTraining,
            ),
            const RatingItem(
              text: StringsManager.rateClinte,
            ),
            const SizedBox(
              height: AppSize.size10,
            ),
            const Divider(
              indent: AppSize.size16,
              endIndent: AppSize.size16,
              color: ColorManager.kSucnedColor,
              height: AppSize.size2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringsManager.averageRating,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    StringsManager.averageRatingInfo,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: AppSize.size90,
        color: ColorManager.kPrimaryColor,
        child: Align(
          //alignment: Alignment.center,
          child: buildCustomButton(
            context: context,
            width: AppSize.size250,
            height: AppSize.size40,
            buttonName: StringsManager.submit,
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  final _clinetInfo = ClinetInfo.clinetInfo;

  Widget buildClinetInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(_clinetInfo.length, (index) {
        return SizedBox(
          height: AppSize.size60,
          width: AppSize.size335,
          child: _clinetInfo[index],
        );
      }),
    );
  }
}
