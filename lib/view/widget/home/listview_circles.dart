import 'package:brra/core/constant/color.dart';
import 'package:brra/data/static/homwcircle_data.dart';
import 'package:flutter/material.dart';

class listviewCircles extends StatelessWidget {
  const listviewCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                width: 20.0,
              ),
          itemCount: homCirculesList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColor.brown,
                            borderRadius: BorderRadius.circular(80.0)),
                      
                        height: 100.0,
                        width: 100.0,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: 
                              Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(homCirculesList[index].icon),
                              ),
                    
                          )
                        
                        ),
                                                  SizedBox(width: 10,),
                          Text(homCirculesList[index].title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                  ],
                )
              ],
            );
          }),
    );
  }
}
