import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';

class CircularProgress extends StatefulWidget {
  final double targetValue;
  const CircularProgress({super.key, required this.targetValue});

  @override
  _CircularProgressState createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.animateTo(widget.targetValue);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularProgressIndicator(
          value: controller.value,
          strokeWidth: 5,
          backgroundColor: AppColor.colorBlue30,
          valueColor: AlwaysStoppedAnimation<Color>(AppColor.getSecondaryBlueColor()),
        ),
        Text(
          '${(controller.value * 100).round()}%',
          style: TextStyle(
            color: AppColor.getSecondaryBlueColor(),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}