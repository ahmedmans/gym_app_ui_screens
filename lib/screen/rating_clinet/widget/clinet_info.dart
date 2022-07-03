import 'package:flutter/material.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/color_manager.dart';

class ClientInfo extends StatelessWidget {
  final String text;
  final String infoText;
  const ClientInfo({Key? key, required this.text, required this.infoText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              infoText,
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding.padding14,
          ),
          child: Divider(
            color: ColorManager.kSucnedColor,
            height: AppSize.size1_5,
          ),
        ),
      ],
    );
  }
}
