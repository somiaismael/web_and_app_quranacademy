import 'package:brra/core/constant/color.dart';
import 'package:brra/core/services/survices.dart';
import 'package:brra/responsive.dart';
import 'package:brra/view/widget/home/home_button.dart';
import 'package:brra/view/widget/onboarding/onboardingbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePanner extends StatelessWidget {
  const HomePanner({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices =Get.find();


    return AspectRatio(
    
       aspectRatio:
       Responsive.isMobile(context)?  1.5: 2.90,
       
        child: Stack(
        fit: StackFit.expand,
        children: [
    Container(child:Image.asset("assets/images/3.png",fit: BoxFit.fill,)),
        Container(
        //  color: AppColor.lightBrown,
          child: 
          Container(
            padding:myServices.sharedPreferences.getString("lang") == "en" ?
            EdgeInsets.only(left:  20):  EdgeInsets.only(right: 20) ,
          child: 
          Container(
            padding: 
            Responsive.isDesktop(context)?  EdgeInsets.symmetric(horizontal:30)
            :EdgeInsets.symmetric(horizontal:10)
           ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text( "25".tr,style: Responsive.isDesktop(context)? TextStyle(
                         fontWeight: FontWeight.bold,fontSize:35,color:Colors.white):TextStyle(
                         fontWeight: FontWeight.bold,fontSize:25,color:Colors.white) )
                         ,
                         SizedBox(height: 5,),
                
                       Text( "26".tr,style:Responsive.isDesktop(context)? TextStyle(
                         fontWeight: FontWeight.w600,fontSize:30,color:Colors.white)  :TextStyle(
                         fontWeight: FontWeight.w600,fontSize:14,color:AppColor.lightgrey) ), 
                      SizedBox(height: 35,),
                         HomeButton(textbuttun: "27".tr, onPressed: (){}, backgroundColor: AppColor.primarycolor)   
                  ],
              ),
          ),
            ),
        )
        ],
      ),
        
        //  Container(
        
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     color: AppColor.lightBrown,
        //     borderRadius: BorderRadius.all(Radius.circular(10)),
        //      border: Border.all(color: AppColor.grey,width: 1) ,
        //   ),
        //   child:Center(
        //     child: Container(
        //       // padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 40),
        //       child:Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //         Text( "25".tr,style: Responsive.isDesktop(context)? TextStyle(
        //              fontWeight: FontWeight.bold,fontSize:30,color:AppColor.darkBrown):TextStyle(
        //              fontWeight: FontWeight.bold,fontSize:25,color:AppColor.darkBrown) )
        //              ,
        //              SizedBox(height: 5,),
            
        //            Text( "26".tr,style:Responsive.isDesktop(context)? TextStyle(
        //              fontWeight: FontWeight.w600,fontSize:20,color:AppColor.darkgrey)  :TextStyle(
        //              fontWeight: FontWeight.w600,fontSize:15,color:AppColor.darkgrey) ), 
        //           SizedBox(height: 35,),
        //              HomeButton(textbuttun: "27".tr, onPressed: (){}, backgroundColor: AppColor.primarycolor)   
        //       ],)
               
        //     ),
        //   ),
        // ),
      
    );
  }
}