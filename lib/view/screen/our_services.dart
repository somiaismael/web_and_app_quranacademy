import 'package:brra/core/constant/color.dart';
import 'package:brra/core/shared/custombuttomdefult.dart';
import 'package:brra/data/static/programs_data.dart';
import 'package:brra/responsive.dart';
import 'package:brra/view/widget/home/home_button.dart';
import 'package:brra/view/widget/ourservices/list_categories.dart';
import 'package:brra/view/widget/ourservices/top_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColor.darkBrown,
      child: Container(
     padding:Responsive.isDesktop(context)? EdgeInsets.symmetric(horizontal: 20, vertical: 10):null,
        child: ListView(
          children: [
          TopText(),
          SizedBox(height: 10,),
          Column(
            children: [
        
                 ListCategories(categorieName: "22".tr,programsList: quranpgramsList,),
                  ListCategories(categorieName: "23".tr,programsList: arabicLanguageProgramsList,),
                  ListCategories(categorieName: "24".tr,programsList: shariaSciencesProgramsList,),
        
            ],
          )
          ],
        ),
      ),
    );
  }
}