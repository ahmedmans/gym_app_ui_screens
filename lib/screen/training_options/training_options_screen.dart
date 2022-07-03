import 'package:flutter/material.dart';
import '../../resources/constant/app_size_manager.dart';
import '../../resources/constant/color_manager.dart';
import '../../resources/constant/strings_manager.dart';
import '../../resources/widget/build_custom_button.dart';
import 'widget/build_days_off.dart';
import 'widget/build_selected_form.dart';
import 'widget/build_training_header.dart';
import '../../resources/widget/screen_body.dart';

class TrainingOptionsScreen extends StatefulWidget {
  const TrainingOptionsScreen({Key? key}) : super(key: key);

  @override
  State<TrainingOptionsScreen> createState() => _TrainingOptionsScreenState();
}

class _TrainingOptionsScreenState extends State<TrainingOptionsScreen> {
  TextEditingController controllerFrom = TextEditingController();
  TextEditingController controllerTo = TextEditingController();
  @override
  void initState() {
    controllerFrom.text = '';
    controllerTo.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kSucnedColor,
      appBar: AppBar(
        title: const Text(StringsManager.trainingOptions),
      ),
      body: ScreenBody(
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: buildTrainingHeader(context),
            ),
            const Expanded(
              flex: 1,
              child: DayOff(),
            ),
            const Expanded(
              flex: 4,
              child: const BuildSelectedTimeForm(),
            ),
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
            width: AppSize.size300,
            height: AppSize.size50,
            buttonName: StringsManager.save,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
