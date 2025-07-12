import 'package:brra/core/constant/color.dart';
import 'package:brra/core/services/survices.dart';
import 'package:brra/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustumTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData icondata;
  final TextEditingController? mycontoller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obsecureText;
  final void Function()? onTapIcon;
  const CustumTextFormAuth({
    super.key,
    this.obsecureText,
    this.onTapIcon,
    required this.hinttext,
    required this.labeltext,
    required this.icondata,
    required this.mycontoller,
    required this.valid,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText:
            obsecureText == null || obsecureText == false ? false : true,
        keyboardType: isNumber
            ? TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontoller,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.lightBrown,
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 13),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                myServices.sharedPreferences.getString("lang") == "en"
                    ? const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0)
                    : const EdgeInsets.only(right: 14.0, bottom: 8.0, top: 8.0),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            suffixIcon: InkWell(onTap: onTapIcon, child: Icon(icondata)),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(30),
            // ),
            focusColor: AppColor.darkgrey),
      ),
    );
  }
}
