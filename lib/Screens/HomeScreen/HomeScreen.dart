import 'dart:developer';

import 'package:dgecommerc/Global.dart';
import 'package:dgecommerc/ProductCards/MiniProductCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shimmer/shimmer.dart';

import '../../ProductCards/ProductDisplay.dart';
import '../../Widgets/SearchTextform.dart';
import '../CartScreen/CardController.dart';
import '../ProfileScreen/loginController.dart';
import 'HomeController.dart';

class HomeView extends StatelessWidget {
  //const HomeView({Key? key}) : super(key: key);
  HomeController controller = Get.put(HomeController());
  CartController cartController =Get.put(CartController());
  LoginController  logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              AppbarRow(),
              // SizedBox(
              //   height: 10.h,
              // ),
              SearchRow(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Explore',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
              ),
              // SizedBox(height: 20.h,),

              ProductTopRow(),
              //ProductTopRow(),
              Text(
                'Best seller',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
              ),
              Container(
                height: size.height*3.3,
                  //flex: 1,
                  child: MiniProductRow()),
            ],
          ),
        ),
      ),
    );
  }

  Widget AppbarRow() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu_rounded,
            color: primaryColor,
            size: 25,
          ),
          SizedBox(
            width: 90.w,
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: SizedBox(
              height: 70.h,
              width: 100.w,
              child: SvgPicture.asset(
                'assets/logo/Dgt.svg',
              ),
            ),
          ),
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
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Center(
              child: Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SearchRow() {
    return Row(
      children: [
        SearchTextFormField("What are you looking for ?", 35.h, 280.w),
        SizedBox(
          width: 20.w,
        ),
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
    );
  }
  Widget ProductTopRow(){
    return   GetBuilder<HomeController>(
      builder: (_) => controller.isloadingExplore
          ? Container(

         child:   SizedBox(
              //s  width: 200.0.w,
                height: 300.0.h,
                child: GetBuilder<HomeController>(
                    builder: (_dx) =>
                        ListView.builder(
                          itemCount: _dx.productlist.length,
                          scrollDirection: Axis.horizontal,
                          controller: _dx.sccontroller,
                          itemBuilder: (BuildContext ctx, index) {
                            return InkWell(
                              onTap: (){
                               // log(_dx.productlist[index].id.toString());
                                Get.toNamed('/detailscreen',arguments: _dx.productlist[index].id.toString());
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.w, vertical: 15.w),
                                child: ProductCard(
                                    _dx.productlist[index].thumbnailImage ?? "",
                                    _dx.productlist[index].name ?? "",
                                    _dx.productlist[index].unit ?? "",
                                    _dx.productlist[index].basePrice??"",
                                  // function:
                                  //   cartController.AddCart(
                                  //     logincontroller.LoginList[0].user.id.toString(),
                                  //       "",
                                  //     _dx.productlist[index].id,
                                  //     1,
                                  //   ),
                                ),
                              ),
                            );
                          },
                        ),
                ) ,)
         ):  Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white70,
        child:  Container(
          height: 290.h,
          child:   ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
           // controller: _dx.sccontroller,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 7.w, vertical: 15.w),
                child: ProductCard(
                     "",
          "",
                    "",
             "",),
              );
            },
          ),
        ),





        // Container(
        //   height: 300.h,
        //  // width: 200,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20.sp),
        //
        //   ),
        // ),
      ),
    );
  }


Widget MiniProductRow(){
  //final size = MediaQuery.of(ctx).size;
    return  GetBuilder<HomeController>(
      builder: (_) => controller.isloadingMiniCard
          ? GetBuilder<HomeController>(
            builder: (_dx) =>
                ListView.builder(
                  itemCount: _dx.MiniCardList.length,
                  physics:  NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 7.w, vertical: 15.w),
                      child: InkWell(
                        onTap: (){
                          log(_dx.MiniCardList[index].id.toString());
                          Get.toNamed('/detailscreen',arguments: _dx.MiniCardList[index].id.toString());
                        },
                        child: MiniProductCard(
                            _dx.MiniCardList[index].thumbnailImage ?? "",
                            _dx.MiniCardList[index].name ?? "",
                            _dx.MiniCardList[index].rating.toString() ?? "",
                            _dx.MiniCardList[index].basePrice.toString()),
                      ),
                    );
                  },
                ),
          )
          : Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white70,
        child:  Container(
          height: 290.h,
          child: ListView.builder(
            itemCount: 5,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 7.w, vertical: 15.w),
                child: MiniProductCard(
                  "",
                  "",
                  "",
                  "",),
              );
            },
          ),
        ),





        // Container(
        //   height: 300.h,
        //  // width: 200,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20.sp),
        //
        //   ),
        // ),
      ),
    );
}

}


