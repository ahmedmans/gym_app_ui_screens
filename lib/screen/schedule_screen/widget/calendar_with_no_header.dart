import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/color_manager.dart';
import 'package:intl/intl.dart';

class CalendarWithNoHeader extends StatefulWidget {
  final DateTime currentDate;
  DateTime currentDate2;
  String currentMonth;
  String currentYear;
  DateTime targetDateTime;

  CalendarWithNoHeader({
    Key? key,
    required this.currentDate,
    required this.currentDate2,
    required this.currentMonth,
    required this.currentYear,
    required this.targetDateTime,
  }) : super(key: key);

  @override
  State<CalendarWithNoHeader> createState() => _CalendarWithNoHeaderState();
}

class _CalendarWithNoHeaderState extends State<CalendarWithNoHeader> {
  final EventList<Event> _markedDatesMap = EventList(
    events: {
      DateTime(2022, 07, 1): [
        Event(
          date: DateTime(2022, 07, 14),
          title: "Event 1",
        ),
      ],
      DateTime(2022, 07, 15): [
        Event(
          date: DateTime(2022, 07, 16),
          title: 'Event 2 ',
        ),
      ],
    },
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.padding10, vertical: AppPadding.padding5),
      child: CalendarCarousel<Event>(
        //height: 200,
        //dayPadding: 6,
        markedDateShowIcon: true,

        shouldShowTransform: false,
        weekdayTextStyle: Theme.of(context).textTheme.headline3,
        firstDayOfWeek: 1,
        daysTextStyle: Theme.of(context).textTheme.subtitle2,
        todayBorderColor: Colors.transparent,
        onDayPressed: (date, List<Event> event) {
          setState(() {
            widget.currentDate2 = date;
          });
        },
        prevDaysTextStyle: Theme.of(context)
            .textTheme
            .headline3
            ?.copyWith(color: ColorManager.gray),
        nextDaysTextStyle: Theme.of(context)
            .textTheme
            .headline3
            ?.copyWith(color: ColorManager.gray),
        daysHaveCircularBorder: true,
        showOnlyCurrentMonthDate: false,
        weekendTextStyle: Theme.of(context).textTheme.subtitle2,
        thisMonthDayBorderColor: Colors.transparent,
        weekFormat: false,
        markedDatesMap: _markedDatesMap,
        selectedDateTime: widget.currentDate2,
        targetDateTime: widget.targetDateTime,
        customGridViewPhysics: const NeverScrollableScrollPhysics(),
        isScrollable: false,
        showHeader: false,
        todayTextStyle: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: Colors.black),
        todayButtonColor: Colors.transparent,
        selectedDayTextStyle: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: Colors.black),
        selectedDayBorderColor: Colors.transparent,
        selectedDayButtonColor: ColorManager.white,

        minSelectedDate:
            widget.currentDate.subtract(const Duration(days: 3652)),
        maxSelectedDate: widget.currentDate.add(const Duration(days: 3652)),
        onCalendarChanged: (date) {
          setState(() {
            widget.targetDateTime = date;
            widget.currentMonth =
                DateFormat.MMMM().format(widget.targetDateTime);
            widget.currentYear = DateFormat.y().format(widget.targetDateTime);
          });
        },
        onDayLongPressed: (day) {},
      ),
    );
  }
}
