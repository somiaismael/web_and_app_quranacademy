import 'package:brra/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Column(
          children: [
            
           Image.asset("assets/images/logo.png",height: 200,width: 200,fit: BoxFit.fill,),
           Text("29".tr,style:
           TextStyle(fontWeight: FontWeight.bold,color: AppColor.darkgrey),),
           SizedBox(height: 5,),
           Text("30".tr,style:
           TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: AppColor.primarycolor),),
        
              
           
          ],
        )
    ;
  }
}



