import 'package:brra/core/services/survices.dart';
import 'package:get/get.dart';


translateDataBase(coloumnAr, coloumnEn) {
  MyServices myServices = Get.find();

  if (myServices.sharedPreferences.getString("lang") == "ar") {
    return coloumnAr;
  } else {
    return coloumnEn;
  }
}
