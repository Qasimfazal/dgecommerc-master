import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shimmer/shimmer.dart';

import '../../Config.dart';
import '../../Global.dart';
import '../../ProductCards/MiniProductCard.dart';
import '../../ProductCards/ProductDisplay.dart';
import '../HomeScreen/HomeController.dart';
import 'DetailScreenController.dart';

class DetailProductScreen extends StatelessWidget {
  DetailScreenController controller = Get.put(DetailScreenController());
  //HomeController Homecontroller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var product = controller.DetailScreenList;

    return Scaffold(
      backgroundColor: lightblue,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: false,
         // centerTitle: false,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 8.w),
              child: Container(
                height: 20.h,
                width: 42.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: secondBlack,
                  borderRadius: BorderRadius.circular(10.sp),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
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
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 8.w),
              child: Container(
                height: 20.h,
                width: 42.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: secondBlack,
                  borderRadius: BorderRadius.circular(10.sp),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
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
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 50.0,
          leading: InkWell(
            onTap: () {
              Get.offAndToNamed('/navbar');
            },
            child: Icon(
              Icons.arrow_back,
              color: primaryColor,
              size: 25,
            ),
          ),
          expandedHeight: 300.0.h,
          flexibleSpace: Container(

            child: ImageSlider(),
          ),
        ),
        SliverToBoxAdapter(
          child: DetailRow(),
        ),
        SliverToBoxAdapter(
          child:
          GetBuilder<DetailScreenController>(
            builder: (_) => controller.DescriptionContainer ?  Container() : Padding(
              padding: const EdgeInsets.all(18.0),
              child: Description(),
            )),

        ),
        SliverToBoxAdapter(
          child: Column(
            children: [

              DiscriptionPolicies('Video\'s'),
              DiscriptionPolicies('Reviews'),
              DiscriptionPolicies('Seller Policy'),
              DiscriptionPolicies('Return Policy'),
              DiscriptionPolicies('Support Policy'),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text('    Product you may like ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ProductTopRow(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text('    Top selling products ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

              MiniProductRow(context),
            ],
          ),
        ),
      ]),
      floatingActionButton: Container(
        height: 45.h,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r),
          ),
        ),
        child: Center(
            child: Text(
          "+  Add to Cart ",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  Widget Description() {
    return GetBuilder<DetailScreenController>(
        builder: (_) => controller.isloading
            ?  controller.secondHalf==null ?  Text( controller.firstHalf.toString()) :
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text('Description',style: TextStyle(fontWeight: FontWeight.bold,color: secondBlack,fontSize: 15),),

        Text(controller.flag ? ( controller.firstHalf! + "...") : ( controller.firstHalf! +  controller.secondHalf!)),
         InkWell(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                controller.flag ? "show more" : "show less",
                style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),
              ),
            ],
          ),
          onTap: () {
            controller.flagCondition();
          },
        ),
      ],
    )

            :

     Container());
  }

  Widget DetailRow() {
    return GetBuilder<DetailScreenController>(
      builder: (_) => controller.isloading
          ? Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                          () => Text(
                        controller.DetailScreenList[0].mainPrice.toString() ??
                            'Express Iron 10 kg  ',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Obx(() => Text(
                      controller.DetailScreenList[0].name ?? 'Name',
                      style:  TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Text(
                          "Select Color",
                          style:  TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ), Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),

                        Icon(
                          Icons.star_border_sharp,
                          color: Colors.yellow,
                        ),
                        Text("(4.7)"),
                      ],
                    ),

                  ],
                ),
              )

          :Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white70,
        child: Container(
        height: 50.h,
      ) ),
    );
  }
  Widget ProductTopRow(){
    return   GetBuilder<DetailScreenController>(
      builder: (_) => controller.isloadingRelated
          ? Container(
          child: SizedBox(
            //s  width: 200.0.w,
            height: 270.0.h,
            child: GetBuilder<DetailScreenController>(
              builder: (_dx) =>
                  ListView.builder(
                    itemCount: _dx.RelatedProductList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: (){
                           log(_dx.RelatedProductList[index].id.toString());
                         // Get.toNamed('/detailscreen',arguments: _dx.RelatedProductList[index].id.toString());
                        _dx.pageRefresh(_dx.RelatedProductList[index].id.toString());

                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.w, vertical: 15.h),
                          child: ProductCard(
                              _dx.RelatedProductList[index].thumbnailImage ?? "",
                              _dx.RelatedProductList[index].name ?? "",
                              _dx.RelatedProductList[index].unit ?? "",
                              "RS "+_dx.RelatedProductList[index].basePrice.toString()),
                        ),
                      );
                    },
                  ),
            ) ,
          ))
          : Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white70,
        child:  Container(
          height: 290.h,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
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
      ),
    );
  }


  Widget MiniProductRow(ctx){
    final size = MediaQuery.of(ctx).size;
    return  GetBuilder<DetailScreenController>(
      builder: (_) => controller.isloading
          ? Container(
          child: SizedBox(

            height:600.h,
            child: GetBuilder<DetailScreenController>(
              builder: (_dx) =>
                  Container(
                    child: ListView.builder(
                      itemCount: _dx.TopSellingList.length,
                      physics:  NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext ctx, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.w, vertical: 15.w),
                          child: InkWell(
                            onTap: (){
                              log(_dx.TopSellingList[index].id.toString());
                              _dx.pageRefresh(_dx.TopSellingList[index].id.toString());
                             // Get.offAndToNamed('/detailscreen',arguments: _dx.TopSellingList[index].id.toString());
                            },
                            child: MiniProductCard(
                                _dx.TopSellingList[index].thumbnailImage ?? "",
                                _dx.TopSellingList[index].name ?? "",
                                _dx.TopSellingList[index].rating.toString() ?? "",
                                "RS "+_dx.TopSellingList[index].basePrice.toString()),
                          ),
                        );
                      },
                    ),
                  ),
            ) ,
          ))
          : Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white70,
        child:  Container(
          height: 290.h,
          width: 500,
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
  Widget DiscriptionPolicies(name){
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 40.h,
          color: Colors.white,
          child:  Row(
            children: [
              SizedBox(width: 10.h,),
              Text(name??'data'),
              Spacer(),
              Icon(Icons.arrow_forward),
              SizedBox(width: 10.h,),
            ],
          ),
        ),
      ],
    );
  }
  Widget ImageSlider() {
   // int i = controller.DetailScreenList[0].photos.length;
   return GetBuilder<DetailScreenController>(

       builder: (_) => controller.isloading
           ?
       CarouselSlider.builder(

         itemCount: controller.DetailScreenList[0].photos.length,
         itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
             Container(
               color: Colors.blue,
               child: Column(
                 children: [
                 // SizedBox(height: 30.h,),
                   Expanded(
                     child : Image.network(

                         AppConfig.RAW_BASE_URL1 +
                             '/' +
                             controller.DetailScreenList[0].photos[itemIndex].toString() ??
                             'https://spectrum-sitecore-spectrumbrands.netdna-ssl.com/~/media/SmallAppliancesUS/Black%20and%20Decker/Product%20Page/garment/Traditional/ICR19XS/ICR19XSPrd1_NS_HR.jpg?h=2000&la=en&w=2000',
                         // height: 400.h,
                         // width: 300.w,
                         fit: BoxFit.fitHeight,

                       ),
                   ),
                 ],
               ),
             ),

         options: CarouselOptions(
           autoPlay: true,
           enlargeCenterPage: false,
           viewportFraction: 2.9,
           aspectRatio: 2.0,
           initialPage: 0,
           height: 440
         ),
       )
           :Container(child:  Center(child: spinkit) ));
  }

  Widget ColorSelect(clr1, clr2) {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
        color: clr2,
        // image: DecorationImage(
        //   image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
        //   fit: BoxFit.cover,
        // ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        border: Border.all(
          color: clr1,
          width: 3.3,
        ),
      ),
    );
  }
}
