import 'package:brra/bindings/intialbindings.dart';
import 'package:brra/core/constant/color.dart';
import 'package:brra/data/static/programs_data.dart';
import 'package:brra/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

class Programs extends StatelessWidget {
  const Programs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Responsive(
          desktop:  buildGridView(
            itemCount: quranProgrames.length,
            crossAxisCount: 3,
            childAspectRatio:1.80,
            itemBuilder: (context, index) => projectCard(index)),

            tablet:buildGridView(
            itemCount: quranProgrames.length,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 :3,
            childAspectRatio:1.30,
            itemBuilder: (context, index) => projectCard(index)),

            mobileLarge: buildGridView(
            itemCount: quranProgrames.length,
            crossAxisCount: 2,
            childAspectRatio:2.30,
            itemBuilder: (context, index) => projectCard(index)),

             mobile: buildGridView(
            itemCount: quranProgrames.length,
            crossAxisCount: 1,
            childAspectRatio:2.30,
            itemBuilder: (context, index) => projectCard(index)),
            )
      
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
    
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: itemBuilder);
  }

  Stack projectCard(int index) {
    return Stack(
      
      children: [
       
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColor.lightBrown,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Column(
              children: [
                Text(
                  quranProgrames[index].type,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkBrown),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child:  Text(
                    quranProgrames[index].content,
                     overflow:TextOverflow.visible ,
                    style: TextStyle(
                        fontSize:16,
                        color: AppColor.darkgrey,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Divider(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "98".tr,
                      style: TextStyle(color: AppColor.primarycolor),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
