import 'package:brra/core/constant/color.dart';
import 'package:flutter/material.dart';

class Answars extends StatelessWidget {
  const Answars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           
              Container(
                padding: EdgeInsets.symmetric(horizontal:  10,vertical: 40),
                // margin: EdgeInsets.all( 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lightBrown,width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.person,color: AppColor.brown,size: 50,),
                    Text("نخبة من المُعلمين",style: TextStyle(color: AppColor.brown,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("مجموعة من أكفأ المعلمين (رجال و نساء) حاصلين على إجازات \nو أسانيد عالية.",style: TextStyle(color: AppColor.lightBrown,fontWeight: FontWeight.bold,fontSize: 13),),
                  ],
                ),
              ),
             
                     Container(
                padding: EdgeInsets.symmetric(horizontal:  10,vertical: 40),
                // margin: EdgeInsets.all( 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lightBrown,width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.person,color: AppColor.brown,size: 50,),
                    Text("نخبة من المُعلمين",style: TextStyle(color: AppColor.brown,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("مجموعة من أكفأ المعلمين (رجال و نساء) حاصلين على إجازات \nو أسانيد عالية.",style: TextStyle(color: AppColor.lightBrown,fontWeight: FontWeight.bold,fontSize: 13),),
                  ],
                ),
              ),
            
                   Container(
                 padding: EdgeInsets.symmetric(horizontal:  10,vertical: 40),
                //  margin: EdgeInsets.all( 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lightBrown,width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.person,color: AppColor.brown,size: 50,),
                    Text("نخبة من المُعلمين",style: TextStyle(color: AppColor.brown,fontWeight: FontWeight.bold,fontSize: 20),),
 Text("مجموعة من أكفأ المعلمين (رجال و نساء) حاصلين على إجازات \nو أسانيد عالية.",style: TextStyle(color: AppColor.lightBrown,fontWeight: FontWeight.bold,fontSize: 13),),                  ],
                ),
              ),
             
            ],
          ),
          SizedBox(height: 15,),
           Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           
              Container(
                padding: EdgeInsets.symmetric(horizontal:  10,vertical: 40),
                // margin: EdgeInsets.all( 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lightBrown,width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.person,color: AppColor.brown,size: 50,),
                    Text("نخبة من المُعلمين",style: TextStyle(color: AppColor.brown,fontWeight: FontWeight.bold,fontSize: 20),),
 Text("مجموعة من أكفأ المعلمين (رجال و نساء) حاصلين على إجازات \nو أسانيد عالية.",style: TextStyle(color: AppColor.lightBrown,fontWeight: FontWeight.bold,fontSize: 13),),                  ],
                ),
              ),
                   Container(
                 padding: EdgeInsets.symmetric(horizontal:  10,vertical: 40),
                //  margin: EdgeInsets.all( 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lightBrown,width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.person,color: AppColor.brown,size: 50,),
                    Text("نخبة من المُعلمين",style: TextStyle(color: AppColor.brown,fontWeight: FontWeight.bold,fontSize: 20),),
 Text("مجموعة من أكفأ المعلمين (رجال و نساء) حاصلين على إجازات \nو أسانيد عالية.",style: TextStyle(color: AppColor.lightBrown,fontWeight: FontWeight.bold,fontSize: 13),),                  ],
                ),
              ),
            
                   Container(
              padding: EdgeInsets.symmetric(horizontal:  10,vertical: 40),
                //  margin: EdgeInsets.all( 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lightBrown,width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.person,color: AppColor.brown,size: 50,),
                    Text("نخبة من المُعلمين",style: TextStyle(color: AppColor.brown,fontWeight: FontWeight.bold,fontSize: 20),),
                 Text("مجموعة من أكفأ المعلمين (رجال و نساء) حاصلين على إجازات \nو أسانيد عالية.",style: TextStyle(color: AppColor.lightBrown,fontWeight: FontWeight.bold,fontSize: 13),),                  ],
                ),
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}