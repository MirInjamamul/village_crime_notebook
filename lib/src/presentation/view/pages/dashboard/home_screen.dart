import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_crime/controllers/home/home_conreoller.dart';

import '../home/custom_module_header.dart';
import '../home/discover_module.dart';
import '../home/ngo_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _loadThana();
    });

    // if (MyNGOController.to.myProjectList.isEmpty) {
    // MyNGOController.to.getProjectsByNGO();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (home) {
      return Scaffold(
        appBar: AppBar(title: Text("Home")),
        // drawer: CustomSideDrawer(),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16,),
                const DiscoverModule(),
                CustomModuleHeader(title: 'Thana List'.tr, onTapSeeAll: () {}),
                NGOList(ngoList: home.thanas),
              ],
            ),
          ),
        ),
      );
    });
  }

  void _loadThana() {
    Get.find<HomeController>().getAllThana();
  }
}
