import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_crime/controllers/home/home_conreoller.dart';
import 'package:village_crime/models/division.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';

class DivisionScreen extends StatelessWidget {
  const DivisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final divisionList = Get.find<HomeController>().getDivision();

    return Scaffold(
      appBar: AppBar(title: const Text('Divisions')),
      backgroundColor: AppColor.getBackgroundColor(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: divisionList.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date header
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: NotificationCard(notification: entry)
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final Division notification;
  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.colorWhite,
      child: ListTile(
        leading: Image.asset(AppImage.appLogo, height: 45, width: 45,),
        title: _notificationTitle(notification),
        subtitle: Text(notification.id.toString() ?? '', style: const TextStyle(color: AppColor.colorBlack70, fontWeight: FontWeight.w400, fontSize: 12)),
      ),
    );
  }
}

Widget _notificationTitle(Division notification){
  return RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(
          text: notification.divisionName,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: AppColor.colorBlack100),
        ),
      ],
    ),
  );
}
