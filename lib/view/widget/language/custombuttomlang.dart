import 'package:brra/core/constant/color.dart';
import 'package:brra/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
 final String textbuttun;
  final String image;
  final Color backgroundColor;
 final void Function()? onPressed;
 
  const CustomButtonLang({super.key, required this.textbuttun,
  required this.onPressed,
   required this.image, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: EdgeInsets.symmetric(horizontal: 50,),
        
            width: double.infinity,
      child: ElevatedButton(
       style: ElevatedButton.styleFrom(
                  backgroundColor:backgroundColor,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  side: BorderSide(
                  width: 1,
                  color: AppColor.grey,
                ),
               ),
       
        onPressed: onPressed,
        
         child: Container(
           child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ 
                        Text(textbuttun,style: TextStyle(
                          color: AppColor.darkgrey,
                          fontSize: 15),),
                            Image.asset(image,height: 30,),
                      ],
                      
                    ),
         ), ),
    );
 
  }
}