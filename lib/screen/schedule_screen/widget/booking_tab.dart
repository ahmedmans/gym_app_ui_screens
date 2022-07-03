import 'package:flutter/material.dart';
import 'package:gym_app/model/booking_info.dart';
import '../../../resources/constant/strings_manager.dart';
import 'custom_daily_details_column.dart';

class BookingTab extends StatelessWidget {
  const BookingTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bookingDitails = BookingInfo.bookingDitails;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringsManager.today,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                StringsManager.clear,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        CustomDailyDetailsColumn(
          length: _bookingDitails.length,
          childList: _bookingDitails,
        )
      ],
    );
  }
}
