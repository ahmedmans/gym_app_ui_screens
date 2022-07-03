import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../resources/constant/app_size_manager.dart';
import '../../../resources/constant/color_manager.dart';

class RatingItem extends StatefulWidget {
  final String text;
  const RatingItem({Key? key, required this.text}) : super(key: key);

  @override
  State<RatingItem> createState() => _RatingItemState();
}

class _RatingItemState extends State<RatingItem> {
  final int _ratingBarMode = 1;
  final double _initialRating = 2.0;
  //final bool _isRTLMode = false;
  final bool _isVertical = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.size335,
      height: AppSize.size22,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              _ratingBar(_ratingBarMode, 0),
              Text(
                '10',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ratingBar(
    int mode,
    double minRating,
  ) {
    return RatingBar.builder(
      initialRating: _initialRating,
      minRating: minRating,
      direction: _isVertical ? Axis.vertical : Axis.horizontal,
      allowHalfRating: true,
      unratedColor: ColorManager.darkGray,
      itemCount: 10,
      itemSize: AppSize.size10,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Container(
        width: AppSize.size4,
        height: AppSize.size4,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorManager.pinke,
        ),
      ),
      onRatingUpdate: (rating) {
        setState(() {});
      },
      updateOnDrag: true,
    );
  }
}
