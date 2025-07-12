import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp()async{
  Get.defaultDialog(
    title:'38'.tr,
    middleText: '39'.tr ,
    actions: [
      ElevatedButton(onPressed: (){
      exit(0);
      }, child: Text('40'.tr)),
          ElevatedButton(onPressed: (){
    Get.back();
      }, child: Text('41'.tr)),
    ]
  );
 return Future.value(true);
}