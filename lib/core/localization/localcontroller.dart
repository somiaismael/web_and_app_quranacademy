import 'package:brra/core/constant/apptheme.dart';
import 'package:brra/core/functions/fcm.dart';
import 'package:brra/core/services/survices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController{
  Locale? language;
  MyServices myServices =Get.find();

  ThemeData apptheme=themeEnglish ;


  changeLang(String langcode){
    Locale local= Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    apptheme =langcode =='ar' ?themeArabic :themeEnglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(local);


  }
@override
  void onInit() {
    // requestPermissionCloudMessaging();
    // fcmConfig();
    String? sharedPreflang = myServices.sharedPreferences.getString("lang");
    if(sharedPreflang =="ar"){
      language=const Locale("ar");
      apptheme= themeArabic;
    }else if(sharedPreflang =="en"){
language=const Locale("en");
  apptheme= themeEnglish;
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
        apptheme= themeEnglish;
    }
    super.onInit();
  }
}