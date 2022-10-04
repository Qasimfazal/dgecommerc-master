import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Config.dart';
import '../Global.dart';

class MiniProductCard extends StatelessWidget {
  final String img,name,unit,price;
 MiniProductCard(this.img,this.name,this.unit,this.price);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      // width: 100.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius:5,
            blurRadius: 8,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 10.w,),
          Image.network(  AppConfig.RAW_BASE_URL1+'/'+img!,height: 90.h,),

          SizedBox(width: 10.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name??'Jougers',style: TextStyle(fontSize: 11.sp),),
              Text(unit??'Addidas',style: TextStyle(fontSize: 12.sp),),
              Row(

                children: [
                  Text(price??'\$1200.0',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                  SizedBox(width: 50.w,),
                  Container(
                    height: 26.h,
                    width: 32.w,

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: secondBlack,
                      borderRadius: BorderRadius.circular(10.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius:5,
                          blurRadius: 20,
                          offset: const Offset(0, 3), // cha // changes position of shadow
                        ),
                      ],
                    ),
                    child:const  Center(
                      child:Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 14,),
                    ),
                  ),
                ],
              ),

            ],
          ),

        ],
      ),


    );
  }
}