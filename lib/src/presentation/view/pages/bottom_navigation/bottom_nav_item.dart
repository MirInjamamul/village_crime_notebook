
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants/app_colors.dart';

class BottomNavItem extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? onTap;
  final bool isSelected;
  const BottomNavItem({Key? key,  required this.image, required this.title, this.onTap, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        child: Column( mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(image, height: 24, width: 24,),
            const SizedBox(height: 4,),
            Text(title, style: TextStyle(fontSize: 12, fontStyle: FontStyle.normal, fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400, color:  isSelected ? AppColor.getPrimaryColor() : AppColor.colorBlack50, overflow: TextOverflow.ellipsis),textAlign: TextAlign.center, maxLines: 1,),

          ],
        ),
      ),
    );
  }
}