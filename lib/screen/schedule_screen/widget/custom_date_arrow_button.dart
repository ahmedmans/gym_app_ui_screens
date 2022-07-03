import 'package:flutter/material.dart';
import '../../../resources/constant/color_manager.dart';
import '../../../resources/constant/font_manager.dart';

class CustomDateArrowButton extends StatelessWidget {
  final void Function()? pressArrowLift;
  final void Function()? pressArrowRight;
  final String text;
  const CustomDateArrowButton(
      {Key? key,
      required this.pressArrowLift,
      required this.pressArrowRight,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            onPressed: pressArrowLift,
            icon: const Icon(
              Icons.arrow_left,
              color: ColorManager.white,
            ),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1?.copyWith(
                fontSize: FontSize.size16,
              ),
        ),
        Expanded(
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerLeft,
            onPressed: pressArrowRight,
            icon: const Icon(
              Icons.arrow_right,
              color: ColorManager.white,
            ),
          ),
        ),
      ],
    );
  }
}
