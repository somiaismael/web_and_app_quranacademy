import 'package:brra/core/constant/rootsname.dart';
import 'package:brra/core/services/survices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MymiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;

MyServices myservices= Get.find();

@override
  RouteSettings? redirect(String? route) {
     if(myservices.sharedPreferences.getString("step") == "2"  ){
      return const RouteSettings(name: AppRoute.homepage);
    }
    if(myservices.sharedPreferences.getString("step") == "1"  ){
      return const RouteSettings(name: AppRoute.login);
    }
    
  }


  
}