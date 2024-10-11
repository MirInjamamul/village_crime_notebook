import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_colors.dart';

class LinkButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String iconAssets;
  final Color? color;
  final double? borderRadius, height;
  const LinkButton({
    Key? key,
    this.onTap,
    this.iconAssets = "",
    this.color,
    this.borderRadius,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          // padding: const EdgeInsets.all(16),
          height: height ?? MediaQuery.of(context).size.width * 0.12,
          width: MediaQuery.of(context).size.width * 0.22,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color ?? AppColor.colorWhite,
              borderRadius: BorderRadius.circular(borderRadius ?? 4)),
          child: Image.asset(
            iconAssets,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
