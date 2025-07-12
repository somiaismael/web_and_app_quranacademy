import 'package:brra/bindings/intialbindings.dart';
import 'package:brra/core/constant/color.dart';
import 'package:brra/data/static/programs_data.dart';
import 'package:brra/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: AppColor.darkBrown,
        child: ListView(
          children: [
            Center(
              child: Container(
                  padding: Responsive.isDesktop(context)
                      ? EdgeInsets.symmetric(horizontal: 40, vertical: 90)
                      : EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColor.lightBrown, width: 4),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "9".tr,
                            style: TextStyle(
                                fontSize: 35,
                                color: AppColor.brown,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "10".tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColor.lightBrown,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "11".tr,
                            style: TextStyle(
                                fontSize: 35,
                                color: AppColor.brown,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "حلقات قرآنية تفاعلية جذابة بطريقة سهلة ميسرة",
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColor.lightBrown,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "رسالتنا:",
                            style: TextStyle(
                                fontSize: 35,
                                color: AppColor.brown,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "تعليم القرآن الكريم للنساء والفتيات على أيدي مقراءات \nمجازات متقنات للقرآن الكريم من خلال استثمار وسائل الإتصال الحديثة",
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColor.lightBrown,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "أهدافنا:",
                            style: TextStyle(
                                fontSize: 35,
                                color: AppColor.brown,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "1- تيسير حفظ القرآن الكريم ومراجعته من أى مكان في العالم\n2- تعليم الأحكام التجويدية وإتقانها\n3- تصحيح تلاوة القرآن الكريم بأساليب علمية وبطريقة سهلة وميسرة\n4- تخريج حافظات مجازات للقرآن الكريم ومؤهلات لإقرائه",
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColor.lightBrown,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ))),
            ),
          ],
        ));
  }
}
