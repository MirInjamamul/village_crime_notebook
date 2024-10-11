import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:village_crime/src/locator.dart' as di;
import 'package:village_crime/src/config/routes/route_helper.dart';
import 'package:village_crime/utils/constants/app_colors.dart';
import 'package:village_crime/utils/constants/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.colorPrimary,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColor.colorPrimary,
        systemNavigationBarIconBrightness: Brightness.light));

    return GetMaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColor.colorPrimary,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.colorPrimary),
          useMaterial3: true,
        ),
        initialRoute: RouteHelper.splashScreen,
        getPages: RouteHelper.routes);
  }
}
