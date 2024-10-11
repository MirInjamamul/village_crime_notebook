import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_colors.dart';

class CircularLogoWidget extends StatelessWidget {
  const CircularLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: AppColor.colorWhite,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColor.colorTile,
          width: 1
        )
      ),
        child: Center(
          child: Image.asset(AppImage.appLogo, width: 40, height: 40,),
        ),
    );
  }
}

// CircleAvatar(
// radius: 36,
// backgroundColor: AppColor.getBackgroundColor(),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: SvgPicture.asset(AppImage.shohayLogo, width: 50, height: 50,),
// ),
// ),
