import 'package:brra/bindings/intialbindings.dart';
import 'package:brra/core/class/app_sroll_behavior.dart';
import 'package:brra/core/localization/localcontroller.dart';
import 'package:brra/core/localization/translation.dart';
import 'package:brra/core/services/survices.dart';
import 'package:brra/roots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());

    return GetMaterialApp(
      translations: Translation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.apptheme,
      scrollBehavior: AppSrollBehavior(),
      initialBinding: IntialBindings(),
      getPages: rootes,
    );
  }
}
