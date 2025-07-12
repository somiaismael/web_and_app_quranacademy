import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:brra/controller/main_screen_controller.dart';
import 'package:brra/core/constant/color.dart';
import 'package:brra/responsive.dart';
import 'package:brra/view/widget/mainscreen/sidemenue_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
     

    Get.put(MainScreenController());
    return GetBuilder<MainScreenController>(builder: (controller) {
      return Scaffold(
        appBar: !Responsive.isDesktop(context)
            ? AppBar(
              backgroundColor: AppColor.darkBrown,
              actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 30,))],
                leading:Builder(builder:(context) => IconButton(onPressed: () {
                  Scaffold.of(context).openDrawer();
                }, icon: Icon(Icons.menu,color: Colors.white,size: 30,)),)
              )
            : null,
            drawer: Responsive.isDesktop(context) ? null : Drawer(child: SidemenueSection(),),
        backgroundColor: AppColor.lightBrown,
        // bottom bar
      // now we will use bottom bar package
      bottomNavigationBar:Responsive.isDesktop(context) ? null : GetBuilder<MainScreenController>(builder: (controller)=>BottomNavyBar(
        backgroundColor: AppColor.lightBrown,
        selectedIndex:controller.currentPage,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => controller.onItemSelected(index),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('93'.tr),
             inactiveColor: AppColor.brown,
            activeColor: AppColor.primarycolor,),
          BottomNavyBarItem(
            icon: Icon(Icons.image_search_outlined),
            title: Text('94'.tr),
            inactiveColor: AppColor.brown,
            activeColor: AppColor.primarycolor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('95'.tr),
            inactiveColor: AppColor.brown,
            activeColor: AppColor.primarycolor,
            
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.email_outlined),
            title: Text('96'.tr),
          inactiveColor: AppColor.brown,
            activeColor: AppColor.primarycolor,
          ),
        ],
      ),),
        body: SafeArea(
            child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(flex: 2, child: SidemenueSection()),
            Expanded(
                flex: 7,
                child: controller.listPages.elementAt(controller.currentPage)),
          ],
        )),
      );
    });
  }
}
