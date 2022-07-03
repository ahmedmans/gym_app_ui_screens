import 'package:flutter/material.dart';
import '../resources/constant/app_size_manager.dart';
import 'package:gym_app/resources/constant/color_manager.dart';
import 'package:gym_app/resources/constant/strings_manager.dart';
import 'package:gym_app/resources/routes_manager.dart';
import 'package:gym_app/resources/widget/build_custom_button.dart';
import 'package:gym_app/resources/widget/screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: ColorManager.kSucnedColor,
      body: ScreenBody(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildCustomButton(
              context: context,
              width: AppSize.size300,
              buttonName: StringsManager.trainingOptions,
              onPressed: () {
                Navigator.pushNamed(context, Routes.trainingOptions);
              },
            ),
            buildCustomButton(
              context: context,
              width: AppSize.size300,
              buttonName: StringsManager.rateClinte,
              onPressed: () {
                Navigator.pushNamed(context, Routes.rateClinteScreen);
              },
            ),
            buildCustomButton(
              context: context,
              width: AppSize.size300,
              buttonName: StringsManager.schedule,
              onPressed: () {
                Navigator.pushNamed(context, Routes.scheduleScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
