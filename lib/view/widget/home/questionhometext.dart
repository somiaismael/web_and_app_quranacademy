import 'package:brra/core/constant/color.dart';
import 'package:brra/responsive.dart';
import 'package:flutter/material.dart';

class QuestionHomeText extends StatelessWidget {
  const QuestionHomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                RichText(text: TextSpan(children: [
                  TextSpan(text: "لماذا",
                  style: Responsive.isDesktop(context)?
                   TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: AppColor.brown)
                   :   TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppColor.brown)),
                   TextSpan(text: " قران أونلاين؟",
                     style: Responsive.isDesktop(context)?
                   TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)
                   :   TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white)),
                ])),
               
              ],
            );
  }
}