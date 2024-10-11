

import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';

class DiscoverCard extends StatelessWidget {
  final String image;
  final String text;
  final double width, height;
  final bool isHorizontalView;

  const DiscoverCard(
      {super.key,
      required this.image,
      required this.text,
      this.width = 48,
      this.height = 48,
      this.isHorizontalView = true});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: AppColor.colorWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: (isHorizontalView)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    height: height,
                    width: width,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Flexible(
                    child: Text(
                      text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.getPrimaryColor(),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    height: height,
                    width: width,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Flexible(
                    child: Text(
                      text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.getPrimaryColor(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
