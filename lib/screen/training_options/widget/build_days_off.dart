import 'package:flutter/material.dart';
import 'package:gym_app/model/full_week.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/color_manager.dart';

Widget buildDaysOff(List<String> listOfDays, BuildContext context) {
  List<bool> isDayOff = List.generate(listOfDays.length, (i) => false);
  return Container(
    // height: double.infinity,

    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listOfDays.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => isDayOff[index] = !isDayOff[index],
        child: Container(
          alignment: Alignment.center,
          width: AppSize.size40,
          height: AppSize.size40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isDayOff[index] ? ColorManager.pinke : ColorManager.gray,
          ),
          child: Text(
            listOfDays[index],
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ),
    ),
  );
}

class DayOff extends StatefulWidget {
  //final List<String> listOfDays;
  const DayOff({
    Key? key,
  }) : super(key: key);

  @override
  State<DayOff> createState() => _DayOffState();
}

class _DayOffState extends State<DayOff> {
  final _fullWeek = FullWeek.fullWeek;

  //late  List<int> _selectedDays = List.generate(daysOff.length, (i) => i);
  late List<bool> _isDayOff = List.generate(_fullWeek.length, (i) => false);

  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _fullWeek.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              _isDayOff[index] = !_isDayOff[index];
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.padding3),
            child: Container(
              alignment: Alignment.center,
              width: AppSize.size40,
              height: AppSize.size40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    _isDayOff[index] ? ColorManager.pinke : ColorManager.gray,
              ),
              child: Text(
                _fullWeek[index],
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
