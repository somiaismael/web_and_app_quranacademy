import 'package:brra/controller/contact_us_controller.dart';
import 'package:brra/core/constant/color.dart';
import 'package:brra/core/functions/validinput.dart';
import 'package:brra/responsive.dart';
import 'package:brra/view/widget/contactus/textform.dart';
import 'package:brra/view/widget/home/home_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ContactUsController());

    return GetBuilder<ContactUsController>(builder: (controller)=>Container(
        
        width: double.infinity,
        color: AppColor.darkBrown,
        child:ListView(
          children: [
            Center(
                child: 
              //   Padding(
              // padding: EdgeInsets.all(80),
              // child: 
              // AspectRatio(
                
              //   aspectRatio:Responsive.isDesktop(context)?1.30 :1,
                // child:
                //  Container(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(80),
                //         bottomRight: Radius.circular(80),
                //       ),
                //       color: AppColor.lightBrown,
                //     ),
                    // child:
                     Container(
                        padding:Responsive.isDesktop(context)? EdgeInsets.symmetric(horizontal: 200,vertical: 200)
                        :EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("12".tr,textAlign:TextAlign.center,style:Responsive.isDesktop(context)? TextStyle(
                                  fontSize: 25,
                                  color: AppColor.lightBrown,
                                  fontWeight: FontWeight.bold)
                                  :
                                  TextStyle(
                                  fontSize: 20,
                                  color: AppColor.lightBrown,
                                  fontWeight: FontWeight.bold)),
                                  SizedBox(height: 30,),
                           CustumTextFormAuth(hinttext: "13".tr,icondata: Icons.person,isNumber: false,
                           labeltext: "14".tr,mycontoller:controller.name ,valid:(val) {
                             return validInput(val!, 1, 10, "name");
                           } ,),
                           SizedBox(height: 5,),
                           CustumTextFormAuth(hinttext: "15".tr,icondata: Icons.email,isNumber: false,
                           labeltext: "16".tr,mycontoller:controller.email ,valid:(val) {
                             return validInput(val!, 1, 100, "email");
                           } ,),
                            SizedBox(height: 5,),
                           CustumTextFormAuth(hinttext: "17".tr,icondata: Icons.phone,isNumber: true,
                           labeltext: "18".tr,mycontoller:controller.phone ,valid:(val) {
                             return validInput(val!, 11, 11, "phone");
                           } ),
                            SizedBox(height: 5,),
            
                            CustumTextFormAuth(hinttext: "19".tr,icondata: Icons.message,isNumber: false,
                           labeltext: "97".tr,mycontoller:controller.message ,valid:(val) {
                             return validInput(val!, 1, 100, "message");
                           } ),
            
                           SizedBox(height: 20,),
                           HomeButton(backgroundColor: AppColor.brown,onPressed: (){
                            controller.onTapSubmit();
                           },textbuttun: "20".tr,)
                          ],
                        ))),
          ],
        ),
          // ),
        // )
        // )
    )
    );
  }
}
