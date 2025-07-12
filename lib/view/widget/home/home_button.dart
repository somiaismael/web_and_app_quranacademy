
import 'package:brra/core/constant/color.dart';
import 'package:brra/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
 final String textbuttun;
  final Color backgroundColor;
 final void Function()? onPressed;
 
  const HomeButton({super.key, required this.textbuttun,
  required this.onPressed,
 required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
       style: ElevatedButton.styleFrom(
                  backgroundColor:backgroundColor,
               ),
        onPressed: onPressed,
         child: Text(textbuttun,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13),),
                          
                      
                      
                    
         );
 
  }
}