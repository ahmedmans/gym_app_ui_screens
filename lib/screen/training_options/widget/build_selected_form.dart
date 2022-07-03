import 'package:flutter/material.dart';
import 'package:gym_app/resources/constant/app_size_manager.dart';
import 'package:gym_app/resources/constant/strings_manager.dart';
import 'package:gym_app/screen/training_options/widget/build_time_filed.dart';
import 'package:intl/intl.dart';

class BuildSelectedTimeForm extends StatefulWidget {
  const BuildSelectedTimeForm({Key? key}) : super(key: key);

  @override
  State<BuildSelectedTimeForm> createState() => _BuildSelectedTimeFormState();
}

class _BuildSelectedTimeFormState extends State<BuildSelectedTimeForm> {
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
    return Padding(
      padding: const EdgeInsets.all(AppPadding.padding20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsManager.selectTime,
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FROM',
                style: Theme.of(context).textTheme.headline2,
              ),
              buildTimeFiledWidget(
                controllerFrom,
                context,
                () async {
                  TimeOfDay? timeOfDay = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  if (timeOfDay != null) {
                    DateTime parse =
                        DateFormat.jm().parse(timeOfDay.format(context));

                    String formatted = DateFormat('hh:mm a').format(parse);

                    setState(() {
                      controllerFrom.text = formatted;
                    });
                  }
                },
              ),
              Text(
                'TO',
                style: Theme.of(context).textTheme.headline2,
              ),
              buildTimeFiledWidget(
                controllerTo,
                context,
                () async {
                  TimeOfDay? timeOfDay = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  if (timeOfDay != null) {
                    DateTime parse =
                        DateFormat.jm().parse(timeOfDay.format(context));

                    String formatted = DateFormat('hh:mm a').format(parse);

                    setState(() {
                      controllerTo.text = formatted;
                    });
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
