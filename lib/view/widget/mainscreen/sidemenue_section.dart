import 'package:brra/controller/main_screen_controller.dart';
import 'package:brra/controller/sidemenu_controller.dart';
import 'package:brra/core/constant/color.dart';
import 'package:brra/core/services/survices.dart';
import 'package:brra/data/static/side_menue_data.dart';
import 'package:brra/view/widget/mainscreen/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SidemenueSection extends StatelessWidget {
  const SidemenueSection({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainScreenController());
    MyServices myServices = Get.find();
    return Container(
        color: AppColor.lightBrown,
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Logo(),
                SizedBox(
                  height: 10,
                ),
                GetBuilder<MainScreenController>(
                  builder: (controller) => Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: sideMenueList.length,
                        itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: InkWell(
                            onTap: () {
                              controller.selectItemeInMenue(index);
                              controller.changePage(index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: controller.isSelected == index
                                      ? AppColor.darkBrown
                                      : null,
                                  borderRadius: controller.isSelected == index
                                      ? BorderRadius.circular(10)
                                      : null),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 13, vertical: 7),
                                child: Row(
                                  children: [
                                    Icon(
                                      sideMenueList[index].icon,
                                      color: controller.isSelected == index
                                          ? Colors.white
                                          : AppColor.darkgrey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      sideMenueList[index].title,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: controller.isSelected == index
                                              ? Colors.white
                                              : AppColor.darkgrey,
                                          fontWeight:
                                              controller.isSelected == index
                                                  ? FontWeight.bold
                                                  : FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("1".tr,style:
           TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: AppColor.darkgrey),),
           SizedBox(width:15,),
                            InkWell(
                              onTap: (){
                           controller.localController
                         .changeLang("ar");
                              },
                              child: Text("2".tr,style: TextStyle(fontSize: 12,
                                            color:AppColor.primarycolor,
                                                fontWeight:FontWeight.w600),),
                            ),
                             SizedBox(width:10,),
                             InkWell(
                                onTap: (){
                           controller.localController
                         .changeLang("en");
                              },
                              child: Text("3".tr,style: TextStyle(fontSize: 12,
                                            color:AppColor.primarycolor,
                                                fontWeight:FontWeight.w600),),
                            ),
                            //  TextButton(
                            //         onPressed: () {
                            //           controller.localController
                            //               .changeLang("ar");
                            //         },
                            //         child: Text("2".tr,style: TextStyle(fontSize: 10,
                            //               color:AppColor.primarycolor,
                            //                   fontWeight:FontWeight.w600),)),
                              
                            //   TextButton(
                            //         onPressed: () {
                            //           controller.localController
                            //               .changeLang("en");
                            //         },
                            //         child: Text(
                            //           "3".tr,
                            //           style: TextStyle(fontSize: 10,
                            //               color:AppColor.primarycolor,
                            //                   fontWeight:FontWeight.w600),
                            //         )),
                          
                         
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "31".tr,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: AppColor.darkgrey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/facebook-svgrepo-com.svg",
                            color: AppColor.darkgrey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                              "assets/images/instagram-svgrepo-com.svg",
                              color: AppColor.darkgrey),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                              "assets/images/tiktok-svgrepo-com.svg",
                              color: AppColor.darkgrey),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                              "assets/images/youtube-svgrepo-com.svg",
                              color: AppColor.darkgrey),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            "assets/images/whatsapp-svgrepo-com.svg",
                            color: AppColor.darkgrey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            "assets/images/telegram-svgrepo-com.svg",
                            color: AppColor.darkgrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )
    ;
  }
}
