import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';


class CustomModuleHeader extends StatelessWidget {
  const CustomModuleHeader(
      {super.key, required this.title, this.additionalCount, this.onTapSeeAll});

  final String title;
  final num? additionalCount;
  final void Function()? onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            if (additionalCount != null)
              Text(
                ' ($additionalCount)',
                style: TextStyle(fontWeight: FontWeight.w700),
              )
          ],
        ),
        if (onTapSeeAll != null) ...[
          InkWell(
            onTap: onTapSeeAll,
            child: Row(
              children: [
                Text(
                  'See All'.tr,
                  style: TextStyle(color: AppColor.colorPrimary),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: AppColor.colorPrimary,
                )
              ],
            ),
          )
        ]
      ],
    );
  }
}
