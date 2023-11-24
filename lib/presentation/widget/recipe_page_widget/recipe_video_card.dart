import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:recipe_app/core/constants/color_constants.dart';
import 'package:recipe_app/core/constants/string_constants.dart';
import 'package:recipe_app/domain/entity/recipe_entity/recipe_entity.dart';

import '../../../core/constants/asset_constants.dart';

class RecipeVideoCard extends StatelessWidget {
  const RecipeVideoCard({
    super.key,
    required this.recipeEntity,
    this.height = 194,
    this.width = 335,
    required this.onPressed,
  });
  final RecipeEntity recipeEntity;
  final double height;
  final double width;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          image: DecorationImage(
            image: CachedNetworkImageProvider(recipeEntity.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 12.w,
          ),
          child: Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetConstantStrings.ktimerIcon,
                              height: 8.h,
                              width: 8.w,
                              colorFilter: const ColorFilter.mode(
                                ColorConstants.whiteBackgraound,
                                BlendMode.srcIn,
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '${recipeEntity.readyInMinutes.toString()} mins',
                              style: const TextStyle(
                                color: ColorConstants.whiteBackgraound,
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          StringConstants.kweeklyPickText,
                          maxLines: 1,
                          style: GoogleFonts.cabin(
                            color: ColorConstants.whiteBackgraound,
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          recipeEntity.summary,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: ColorConstants.whiteBackgraound,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: ColorConstants.greyBackground.withOpacity(0.2),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.play_arrow,
                          color: ColorConstants.whiteBackgraound,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}