import 'package:brra/core/constant/color.dart';
import 'package:brra/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
 final String textbuttun;
  final Color backgroundColor;
 final void Function()? onPressed;
 
  const OnboardingButton({super.key, required this.textbuttun,
  required this.onPressed,
 required this.backgroundColor});

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
        
         child: Text(textbuttun,style: TextStyle(
                          color: Colors.white,
                          
                          fontSize: 15),),
                          
                      
                      
                    
         ), 
    );
 
  }
}