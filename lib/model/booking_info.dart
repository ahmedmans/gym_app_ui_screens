import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/resources/constant/strings_manager.dart';
import 'package:gym_app/screen/schedule_screen/widget/daily_schedules_details.dart';

class BookingInfo {
  static final List<Widget> bookingDitails = [
    DailySchedulesDetails(
      showDot: true,
      text: '${StringsManager.bookingbodyText} ',
      boldText: StringsManager.dailySubtitleText,
      timeText: StringsManager.bookingnotifTime,
      child: SvgPicture.asset(
        'assets/images/awesome-users.svg',
        // width: 19,
      ),
    ),
    DailySchedulesDetails(
      showDot: true,
      text: '${StringsManager.bookingbodyText} ',
      boldText: StringsManager.dailySubtitleText,
      timeText: StringsManager.bookingnotifTime,
      child: SvgPicture.asset(
        'assets/images/awesome-users.svg',
        // width: 19,
      ),
    ),
    DailySchedulesDetails(
      showDot: true,
      text: '${StringsManager.bookingbodyText} ',
      boldText: StringsManager.dailySubtitleText,
      timeText: StringsManager.bookingnotifTime,
      child: SvgPicture.asset(
        'assets/images/awesome-users.svg',
        // width: 19,
      ),
    ),
    DailySchedulesDetails(
      showDot: true,
      text: '${StringsManager.bookingbodyText} ',
      boldText: StringsManager.dailySubtitleText,
      timeText: StringsManager.bookingnotifTime,
      child: SvgPicture.asset(
        'assets/images/awesome-users.svg',
        // width: 19,
      ),
    ),
  ];
}
