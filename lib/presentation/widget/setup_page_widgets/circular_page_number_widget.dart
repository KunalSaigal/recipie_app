import 'package:flutter/material.dart';
import 'package:recipe_app/core/constants/color_constants.dart';

class CircularPageNumberIndicatorWidget extends StatelessWidget {
  const CircularPageNumberIndicatorWidget({
    super.key,
    required this.pageNumber,
    this.isSelected = false,
  });
  final int pageNumber;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 26,
        width: 26,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorConstants.primaryTextColor
              : ColorConstants.cicularPageIndicatorBackgroundColor,
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: ColorConstants.whiteBackgraound,
          child: Text(
            pageNumber.toString(),
            style: TextStyle(
              color: isSelected
                  ? ColorConstants.primaryTextColor
                  : ColorConstants.cicularPageIndicatorBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
