import 'package:brra/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //  Expanded(
      // child: 
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.primarycolor,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:BorderSide(color:AppColor.grey) ,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Theme.of(context).primaryColor)
          ),

          contentPadding: EdgeInsets.symmetric(vertical: 5),
          hintText: "28".tr,
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
            size: 21,
          )
        ),

        
      )
    // )
    ;
  }
}