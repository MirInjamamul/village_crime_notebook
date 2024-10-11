import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_crime/controllers/home/home_conreoller.dart';

import '../../../../../models/thana.dart';
import '../home/custom_module_header.dart';
import '../home/ngo_list_screen.dart';

class WardScreen extends StatefulWidget {
  const WardScreen({super.key});

  @override
  State<WardScreen> createState() => _WardScreenState();
}

class _WardScreenState extends State<WardScreen> {
  final ScrollController _scrollController = ScrollController();

  List<Ward>? ngoData = [];

  @override
  void initState() {
    super.initState();

    ngoData = Get.arguments != null && Get.arguments is List<Ward>?
        ? Get.arguments as List<Ward>?
        : null;

    if (ngoData == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.back();
        Get.snackbar('Error', 'No NGO data provided');
      });
    }

    // if (MyNGOController.to.myProjectList.isEmpty) {
    // MyNGOController.to.getProjectsByNGO();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (home) {
      return Scaffold(
        appBar: AppBar(title: Center(child: Text("Ward"))),
        // drawer: CustomSideDrawer(),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16,),
                CustomModuleHeader(title: 'Ward List'.tr, onTapSeeAll: () {}),
                WardList(ngoList: ngoData!),
              ],
            ),
          ),
        ),
      );
    });
  }
}
