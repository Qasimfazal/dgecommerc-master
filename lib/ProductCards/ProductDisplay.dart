import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Config.dart';
import '../Global.dart';
class ProductCard extends StatelessWidget {
 final String img,name,unit,price;
  ProductCard(this.img,this.name,this.unit,this.price);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      width: 160.w,
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
      child: Padding(
        padding: EdgeInsets.all(12.0.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140.h,
              width: 160.w,
              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Image.network(
                  AppConfig.RAW_BASE_URL1+'/'+img!),
            ),
            // SizedBox(height: 20.h,),
            Text(name,style: TextStyle(fontSize: 12.sp),),
            Text(unit,style: TextStyle(fontSize: 9.sp),),
            // SizedBox(height: 10.h,),
            Row(
              children: [
                Text("Rs "+price,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                const Spacer(),
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
                  child: const Center(
                    child:Icon(Icons.add,color: Colors.white,size: 14,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),


    );
  }
}
