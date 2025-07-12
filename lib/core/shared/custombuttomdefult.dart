import 'package:brra/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtomDefult extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtomDefult({super.key, required this.text,required  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,left: 20,right: 20),
      child: MaterialButton(
        padding: EdgeInsets.symmetric( vertical: 5,horizontal: 5),
        shape: RoundedRectangleBorder( borderRadius: BorderRadiusDirectional.circular(20)),
        color: AppColor.primarycolor,
        textColor: Colors.white,
        onPressed:onPressed,
        child: Text(text),
      ),
    );
  }
}
