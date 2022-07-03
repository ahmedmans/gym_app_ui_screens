import 'package:flutter/material.dart';
import '../../resources/constant/app_size_manager.dart';
import '../../resources/constant/color_manager.dart';
import '../../resources/constant/strings_manager.dart';
import 'widget/booking_tab.dart';
import 'widget/calendar_tab.dart';
import '../../resources/widget/screen_body.dart';

class SchedluleScreen extends StatefulWidget {
  const SchedluleScreen({Key? key}) : super(key: key);

  @override
  State<SchedluleScreen> createState() => _SchedluleScreenState();
}

class _SchedluleScreenState extends State<SchedluleScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorManager.kSucnedColor,
        appBar: AppBar(
          title: Text(
            StringsManager.schedule,
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        body: ScreenBody(
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.padding16),
                child: SizedBox(
                  width: AppSize.size180,
                  height: AppSize.size30,
                  child: TabBar(
                    indicatorColor: ColorManager.pinke,
                    tabs: [
                      Tab(
                        text: StringsManager.calendar,
                      ),
                      Tab(
                        text: StringsManager.booking,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const CalendarTab(),
                    BookingTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
