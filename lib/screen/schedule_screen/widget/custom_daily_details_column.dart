import 'package:flutter/material.dart';
import '../../../resources/constant/app_size_manager.dart';

class CustomDailyDetailsColumn extends StatelessWidget {
  final int length;
  final List<Widget> childList;
  const CustomDailyDetailsColumn(
      {Key? key, required this.length, required this.childList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(length, (index) {
        return SizedBox(
          height: AppSize.size60,
          width: AppSize.size335,
          child: childList[index],
        );
      }),
    );
  }
}
