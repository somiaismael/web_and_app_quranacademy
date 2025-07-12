import 'package:brra/bindings/intialbindings.dart';
import 'package:brra/core/constant/color.dart';
import 'package:brra/view/widget/home/answars.dart';
import 'package:brra/view/widget/home/home_panner.dart';
import 'package:brra/view/widget/home/home_questions.dart';
import 'package:brra/view/widget/home/home_text.dart';
import 'package:brra/view/widget/home/listview_circles.dart';
import 'package:brra/view/widget/home/programs.dart';
import 'package:brra/view/widget/home/questionhometext.dart';
import 'package:brra/view/widget/home/searchsection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColor.darkBrown,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               
                   SizedBox(
                    height: 10,
                  ),
                  HomePanner(),
                  SizedBox(
                    height: 10,
                  ),
                  listviewCircles(),
                  QuestionHomeText(),
                    SizedBox(
                    height: 10,
                  ),
                  Answars(),
                  SizedBox(
                    height: 10,
                  ),
                
                  HomeText(text: "21".tr),
                  SizedBox(
                    height: 15,
                  ),

                  Programs()
                ],
              ),
            )
          ],
        ));
  }
}
