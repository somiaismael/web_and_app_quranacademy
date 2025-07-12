import 'package:brra/core/constant/color.dart';
import 'package:brra/data/static/programs_data.dart';
import 'package:brra/view/widget/home/home_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategories extends StatelessWidget {
     final String categorieName;
    final List programsList; 
  const ListCategories({super.key, required this.categorieName, required this.programsList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                  padding: const EdgeInsets.only(bottom:  5.0),
                child: Text(categorieName,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
              ),
                 
        SizedBox(
        height:120,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  width: 20.0,
                ),
            itemCount: programsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColor.lightBrown,
                  ),
          
                  height: 120,
                  width: 300,
                  child:Stack(children: [
                    Align(alignment: Alignment.topLeft,
                    child:      Text(programsList[index].title,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: AppColor.grey)),),
                    // Align(alignment: Alignment.center,child:  Text("${programsList[index]}",
                    // style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: AppColor.grey)),),
                    Align(alignment: Alignment.bottomRight,
                    child:  TextButton(
              onPressed: () {},
              child: Text(
                "More info >",
                style: TextStyle(color: AppColor.primarycolor),
              ))    ),
                  ],)
            
                    
                    
                  )
                ],
              );
            }),
      )
              ],),
    );
  }
}