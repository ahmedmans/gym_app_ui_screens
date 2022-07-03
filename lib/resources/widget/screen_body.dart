import 'package:flutter/material.dart';
import '../constant/app_size_manager.dart';
import '../constant/color_manager.dart';

class ScreenBody extends StatelessWidget {
  final Widget widget;
  const ScreenBody({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSize.size30),
        ),
        color: ColorManager.kPrimaryColor,
      ),
      child: widget,
    );
  }
}
