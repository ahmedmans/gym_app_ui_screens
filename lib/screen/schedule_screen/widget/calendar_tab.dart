import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/model/calendar_event.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/color_manager.dart';
import '../../../resources/constant/strings_manager.dart';
import 'calendar_with_no_header.dart';
import 'custom_daily_details_column.dart';
import 'custom_date_arrow_button.dart';
import 'daily_schedules_details.dart';
import 'package:intl/intl.dart';

class CalendarTab extends StatefulWidget {
  const CalendarTab({Key? key}) : super(key: key);

  @override
  State<CalendarTab> createState() => _CalendarTableState();
}

class _CalendarTableState extends State<CalendarTab> {
  final DateTime _currentDate = DateTime.now();
  final DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.MMMM().format(DateTime.now());
  String _currentYear = DateFormat.y().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  final _calenderEvents = CalendarEvents.calenderEvents;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.padding16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.size20),
              color: ColorManager.pinke,
            ),
            width: AppSize.size321,
            height: AppSize.size321,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomDateArrowButton(
                          pressArrowLift: () {
                            setState(() {
                              _targetDateTime = DateTime(_targetDateTime.year,
                                  _targetDateTime.month - 1);
                              _currentMonth =
                                  DateFormat.MMMM().format(_targetDateTime);
                            });
                          },
                          text: _currentMonth,
                          pressArrowRight: () {
                            setState(() {
                              _targetDateTime = DateTime(_targetDateTime.year,
                                  _targetDateTime.month + 1);
                              _currentMonth =
                                  DateFormat.MMMM().format(_targetDateTime);
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: CustomDateArrowButton(
                          pressArrowLift: () {
                            setState(() {
                              _targetDateTime =
                                  DateTime(_targetDateTime.year - 1);
                              _currentYear =
                                  DateFormat.y().format(_targetDateTime);
                            });
                          },
                          text: _currentYear,
                          pressArrowRight: () {
                            setState(() {
                              _targetDateTime =
                                  DateTime(_targetDateTime.year + 1);
                              _currentYear =
                                  DateFormat.y().format(_targetDateTime);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: CalendarWithNoHeader(
                    currentDate2: _currentDate2,
                    currentDate: _currentDate,
                    currentMonth: _currentMonth,
                    currentYear: _currentYear,
                    targetDateTime: _targetDateTime,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppPadding.padding20),
            child: Text(
              StringsManager.dailySchedules,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: ColorManager.lightGray,
                  ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomDailyDetailsColumn(
            length: _calenderEvents.length,
            childList: _calenderEvents,
          ),
        ),
      ],
    );
  }
}
