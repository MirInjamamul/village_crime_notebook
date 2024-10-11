import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/constants/app_images.dart';
import 'build_discover_card.dart';
import 'custom_module_header.dart';

class DiscoverModule extends StatelessWidget {
  const DiscoverModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomModuleHeader(title: 'Discover'.tr, onTapSeeAll: null),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DiscoverCard(
                      image: AppImage.cardSearch,
                      text: 'Learn Crime Book'.tr),
                  const SizedBox(
                    height: 16,
                  ),
                  DiscoverCard(
                      image: AppImage.cardManage,
                      text: 'Manage Work Easily'.tr),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: SizedBox(
                height: 192,
                child: DiscoverCard(
                  image: AppImage.cardDonate,
                  text: 'Enhance More Support'.tr,
                  height: 96,
                  width: 96,
                  isHorizontalView: false,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
