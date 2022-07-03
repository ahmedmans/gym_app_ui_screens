import 'package:flutter/material.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/color_manager.dart';

class DailySchedulesDetails extends StatelessWidget {
  final Widget child;
  final String text;
  final String boldText;
  final String timeText;
  final bool showDot;
  const DailySchedulesDetails({
    Key? key,
    required this.child,
    required this.boldText,
    required this.text,
    required this.timeText,
    this.showDot = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: AppPadding.padding16),
              child: Stack(
                children: [
                  Container(
                    width: AppSize.size40,
                    height: AppSize.size40,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius:
                          BorderRadius.circular(AppPadding.padding24 * 2),
                    ),
                    child: Center(
                      child: child,
                    ),
                  ),
                  if (showDot)
                    Positioned(
                      right: 2,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: ColorManager.kSucnedColor,
                          ),
                          color: ColorManager.pinke,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              letterSpacing: AppSize.size1_5,
                            ),
                        text: text,
                      ),
                      TextSpan(
                        text: boldText,
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  Text(
                    timeText,
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding.padding5,
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
