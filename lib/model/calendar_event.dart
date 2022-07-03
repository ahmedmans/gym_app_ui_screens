import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/resources/constant/strings_manager.dart';
import 'package:gym_app/screen/schedule_screen/widget/daily_schedules_details.dart';

class CalendarEvents {
  static final List<Widget> calenderEvents = [
    DailySchedulesDetails(
      text: '${StringsManager.dailyTextBody}\n',
      boldText: StringsManager.dailySubtitleText,
      timeText: StringsManager.dailyEventTime,
      child: SvgPicture.asset(
        'assets/images/calendar_icon.svg',
        // width: 19,
      ),
    ),
    DailySchedulesDetails(
      text: '${StringsManager.dailyTextBody}\n',
      boldText: StringsManager.dailySubtitleText,
      timeText: StringsManager.dailyEventTime,
      child: SvgPicture.asset(
        'assets/images/calendar_icon.svg',
        // width: 19,
      ),
    ),
    DailySchedulesDetails(
      text: '${StringsManager.dailyTextBody}\n',
      boldText: StringsManager.dailySubtitleText,
      timeText: StringsManager.dailyEventTime,
      child: SvgPicture.asset(
        'assets/images/calendar_icon.svg',
        // width: 19,
      ),
    ),
  ];
}
