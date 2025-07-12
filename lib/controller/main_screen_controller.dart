

import 'package:brra/core/localization/localcontroller.dart';
import 'package:brra/view/screen/about_us.dart';
import 'package:brra/view/screen/contact_us.dart';
import 'package:brra/view/screen/home_page.dart';
import 'package:brra/view/screen/main_screen.dart';
import 'package:brra/view/screen/our_services.dart';
import 'package:brra/view/screen/success_contact_us.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController {
 int selectedIndex = 0;
  int isSelected=0;
  int selectedLang=0;
LocalController localController=Get.put(LocalController());
int currentPage=0;

 List<Widget> listPages=[
  HomePage(),
  OurServices(),
  AboutUs(),
  ContactUs(),
  SuccessContactUs()

 ];

  selectItemeInMenue(int index){
    isSelected=index;

    update();

  }

  SelectedLanguage(int index){
    selectedLang=index;

    update();

  }

onItemSelected(i){
  currentPage=i;
  update();
}

//  List buttomappbar=[
// {'title':"56".tr,'icon': Icons.home},
// {'title':"57".tr,'icon': Icons.settings},
// {'title': "58".tr,'icon': Icons.person},
// {'title': "62".tr,'icon': Icons.notifications},
//   ];

 changePage(int i){
  currentPage=i;
 }
}