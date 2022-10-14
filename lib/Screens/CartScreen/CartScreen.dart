
import 'package:dgecommerc/Screens/CartScreen/CardController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Global.dart';

class CartScreen extends StatelessWidget {

  CartController cardcontroller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:  GetBuilder<CartController>(
       // init: cardcontroller.getCard ,
        builder: (_dx) => Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            AppbarRow(),
            CardList(_dx),
          ],
        ),
      ),
      ),
      bottomNavigationBar: GetBuilder<CartController>(
      // init: cardcontroller.getCard ,
      builder: (_dx) => TotalContainer(_dx)
      ),
    );
  }
  Widget AppbarRow() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.arrow_back,
            color: primaryColor,
            size: 25,
          ),
          const Spacer(),
          Text(
            'Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Spacer(),
          Container(
            height: 34.h,
            width: 32.w,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: secondBlack,
              borderRadius: BorderRadius.circular(10.sp),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Center(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget TotalContainer(d) {
   // final size = MediaQuery.of(context).size;
    return Container(
      height: 200.h,
      //width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 17,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 20.h,
            // ),
            Row(
              children: [
                Text(
                  "Selected item",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: secondBlack,
                      fontSize: 20.sp),
                ),
                Spacer(),
                Text(
                  "\$128.00",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: primaryColor,
                      fontSize: 20.sp),
                ),
              ],
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            Row(
              children: [
                Text(
                  "Shopping fee",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: secondBlack,
                      fontSize: 15.sp),
                ),
                Spacer(),
                Text(
                  "\$228.00",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: primaryColor,
                      fontSize: 15.sp),
                ),
              ],
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            Divider(
              height: 2.h,
              color: primaryColor,
            ),

            Row(
              children: [
                Text(
                  'Subtotal ',
                  style: TextStyle(color: Colors.black, fontSize: 20.sp),
                ),
                Spacer(),
                Text(
                  "\$128.00",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: primaryColor,
                      fontSize: 20.sp),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                d.getCard();
              },
              child: Container(
                height: 50.h,
               // width: size.width.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 17,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(child: Text('Checkout',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget CardList(_d){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Icon(Icons.delete_outline,size: 20.sp,color: Colors.red,),
        Container(
            height: 100.h,
            child: Image.network('https://triveniworld.com/uploads/products/Apple-iPhone-13-Smartphone-491997701-i-2-1200Wx1200H7.jpg')),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Iphone 13 pro ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
            SizedBox(height: 20.h,),
            Container(
              width: 220.w,
              child: Row(
                children: [
                  Text('\$1200',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: primaryColor)),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      _d.Addfunc();
                    },
                    child: Container(
                      height: 25.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Center(child: Icon(Icons.add,size: 20,)),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text('${_d.count}'),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      if(_d.count > 0){
                        _d.Subtract();
                      }else{

                      }

                    },
                    child: Container(
                      height: 25.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Center(child: Icon(Icons.remove,size: 20,)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),




      ],
    );
  }
}
