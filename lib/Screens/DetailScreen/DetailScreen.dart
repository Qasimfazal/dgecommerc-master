import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shimmer/shimmer.dart';

import '../../Config.dart';
import '../../Global.dart';
import 'DetailScreenController.dart';
//
// class DetailProductScreen extends StatefulWidget {
//   const DetailProductScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DetailProductScreen> createState() => _DetailProductScreenState();
// }
//
// class _DetailProductScreenState extends State<DetailProductScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 20.h,
//               ),
//               AppbarRow(),
//               ProductImageDisplay(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Widget AppbarRow() {
//     return Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: Container(
//         //height: 5.h,
//
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//              InkWell(
//                onTap: () {
//                  Get.back();
//                },
//                child:const  Icon(
//                 Icons.arrow_back,
//                 color: primaryColor,
//                 size: 25,
//             ),
//              ),
//
//
//             Container(
//               height: 30.h,
//               width: 32.w,
//               decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                 color: secondBlack,
//                 borderRadius: BorderRadius.circular(10.sp),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: const Offset(0, 3), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: const Center(
//                 child: Icon(
//                   Icons.person_outline,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget ProductImageDisplay(){
//     return Container(
//       height: 350.h,
//
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//
//               Image.network('https://www.cnet.com/a/img/resize/dfd8b4f175537bda78f81eae02fa99a1a9a07aba/hub/2019/11/01/f0dcfa53-dc09-408d-bd78-a3a2e8db0c61/macbook-air-hgg-promo.jpg?auto=webp&fit=crop&height=675&width=1200'),
//             Text('MacBook Pro 13\' (Gold)'),
//             Text('\$ 999'),
//             Text('Apple Inc '),
//             Row(
//               children: [
//                 Text('Rating (4.9)'),
//                 Icon(Icons.star),
//                 Icon(Icons.star),
//                 Icon(Icons.star),
//                 Icon(Icons.star),
//               ],
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//

// class DetailProductScreen extends StatefulWidget {
//   const DetailProductScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DetailProductScreen> createState() => _DetailProductScreenState();
// }
//
// class _DetailProductScreenState extends State<DetailProductScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//           slivers: [
//         SliverAppBar(
//           floating: true,
//           pinned: true,
//           snap: false,
//           centerTitle: false,
//           actions: [
//             Padding(
//               padding:  EdgeInsets.symmetric(horizontal: 10.0.w , vertical: 8.w),
//               child: Container(
//                 height: 20.h,
//                 width: 42.w,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.rectangle,
//                   color: secondBlack,
//                   borderRadius: BorderRadius.circular(10.sp),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: const Center(
//                   child: Icon(
//                     Icons.person_outline,
//                     color: Colors.white,
//                     size: 20,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding:  EdgeInsets.symmetric(horizontal: 10.0.w , vertical: 8.w),
//               child: Container(
//                 height: 20.h,
//                 width: 42.w,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.rectangle,
//                   color: secondBlack,
//                   borderRadius: BorderRadius.circular(10.sp),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: const Center(
//                   child: Icon(
//                     Icons.shopping_cart_outlined,
//                     color: Colors.white,
//                     size: 20,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//           backgroundColor: Colors.white,
//           elevation: 50.0,
//           leading:  InkWell(
//             onTap: (){
//               Get.offNamed('/home');
//             },
//             child: Icon(
//               Icons.arrow_back,
//               color: primaryColor,
//               size: 25,
//             ),
//           ),
//           expandedHeight: 350.0.h,
//           flexibleSpace: FlexibleSpaceBar(
//             background: Container(
//              // height: 350.h,
//               child: Column(
//
//                 children: [
//                   SizedBox(height: 0.h,),
//                   //Spacer(),
//                   Image.network(
//                       'https://spectrum-sitecore-spectrumbrands.netdna-ssl.com/~/media/SmallAppliancesUS/Black%20and%20Decker/Product%20Page/garment/Traditional/ICR19XS/ICR19XSPrd1_NS_HR.jpg?h=2000&la=en&w=2000',
//                     height: 350.h,
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ],
//               ),
//             ),
//           ) ,
//         ),
//             SliverToBoxAdapter(
//               child: Container(
//                 //height: 350.h,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       //Text('MacBook Pro 13\' (Gold)'),
//                       Text('\$ 999',style:RsStyle,),
//                       Row(
//                         children: [
//                           Text('Express Iron 10 kg  ',style: TextStyle(fontSize: 15.sp,color: secondBlack,fontWeight: FontWeight.bold),),
//                           Spacer(),
//                           Icon(Icons.star,color: Colors.yellow,),
//                           Icon(Icons.star,color: Colors.yellow,),
//                           Icon(Icons.star,color: Colors.yellow,),
//                           Icon(Icons.star),
//                           Text("(4.7)"),
//                         ],
//                       ),
//                      SizedBox(height: 10.h,),
//                      Text("Select Color",style: SelectColo,),
//                       SizedBox(height: 10.h,),
//                       Container(
//                         width: 150.w,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             ColorSelect(Colors.grey, primaryColor),
//                             SizedBox(width: 5.w,),
//                             ColorSelect(Colors.grey, Colors.black),
//                             SizedBox(width: 5.w,),
//                             ColorSelect(Colors.grey, Colors.blue),
//                           ],
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Description',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                     SizedBox(height: 10.h,),
//                     Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',style: TextStyle(color: Colors.grey),),
//
//                   ],
//                 ),
//               ),
//             ),
//
//       ]),
//       floatingActionButton:   Container(
//         height: 65.h,
//         width: 200,
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30.r),
//             bottomRight: Radius.circular(30.r),
//           ),
//         ),
//         child: Center(child: Text("+  Add to Cart", style: TextStyle(color: Colors.white),)),
//       ),
//       // bottomNavigationBar: Container(
//       //
//       //   decoration: BoxDecoration(
//       //       color: Colors.white
//       //   ),
//       //   child: Row(
//       //     children: [
//       //       Spacer(),
//       //       Container(
//       //         height: 65.h,
//       //         width: 200,
//       //         decoration: BoxDecoration(
//       //         color: Colors.black,
//       //           borderRadius: BorderRadius.only(
//       //             topLeft: Radius.circular(30.r),
//       //           ),
//       //         ),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
//   Widget ColorSelect (clr1,clr2){
//     return Container(
//       width: 35.0,
//       height: 35.0,
//       decoration: BoxDecoration(
//         color: clr2,
//         // image: DecorationImage(
//         //   image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
//         //   fit: BoxFit.cover,
//         // ),
//         borderRadius: BorderRadius.all( Radius.circular(30.0)),
//         border: Border.all(
//           color: clr1,
//           width: 3.3,
//         ),
//       ),
//     );
//   }
// }

class DetailProductScreen extends StatelessWidget {
  DetailScreenController controller = Get.put(DetailScreenController());

  @override
  Widget build(BuildContext context) {
    var product = controller.DetailScreenList;
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: false,
              actions: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.0.w , vertical: 8.w),
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
                  padding:  EdgeInsets.symmetric(horizontal: 10.0.w , vertical: 8.w),
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
              leading:  InkWell(
                onTap: (){
                  Get.offAndToNamed('/home');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: primaryColor,
                  size: 25,
                ),
              ),
              expandedHeight: 350.0.h,
              flexibleSpace: FlexibleSpaceBar(
                background: ImageSlider(),
              ) ,
            ),
            SliverToBoxAdapter(
              child: DetailRow(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Description',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10.h,),
                    Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',style: TextStyle(color: Colors.grey),),
                    Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',style: TextStyle(color: Colors.grey),),

                  ],
                ),
              ),
            ),

          ]),
      floatingActionButton:   Container(
        height: 65.h,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r),
          ),
        ),
        child: Center(child: Text("+  Add to Cart ", style: TextStyle(color: Colors.white),)),
      ),
      // bottomNavigationBar: Container(
      //
      //   decoration: BoxDecoration(
      //       color: Colors.white
      //   ),
      //   child: Row(
      //     children: [
      //       Spacer(),
      //       Container(
      //         height: 65.h,
      //         width: 200,
      //         decoration: BoxDecoration(
      //         color: Colors.black,
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(30.r),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
  Widget DetailRow(){
    return  GetBuilder<DetailScreenController>(
        builder: (_) =>
    controller.isloading
    ? Container(
      //height: 350.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text('MacBook Pro 13\' (Gold)'),
            Obx(() =>  Text(controller.DetailScreenList[0].name??'\$ 999',style:RsStyle,)),
            Row(
              children: [
                Obx(() => Text( controller.DetailScreenList[0].id.toString()??'Express Iron 10 kg  ',style: TextStyle(fontSize: 15.sp,color: secondBlack,fontWeight: FontWeight.bold),),),
                Spacer(),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star),
                Text("(4.7)"),
              ],
            ),
            SizedBox(height: 10.h,),
            Text("Select Color",style: SelectColo,),
            SizedBox(height: 10.h,),
            Container(
              width: 150.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ColorSelect(Colors.grey, primaryColor),
                  SizedBox(width: 5.w,),
                  ColorSelect(Colors.grey, Colors.black),
                  SizedBox(width: 5.w,),
                  ColorSelect(Colors.grey, Colors.blue),
                ],
              ),
            ),
//happy ? yes <£ love you bacha <3 kise aur din abhe meri phatii parhi hai  :3 okok lala thanks
            // kAM DEKHO MERA SARA KHUD KIYA HA COde haanw

          ],
        ),
      ),
    ) : Container(child: Text("Loading...")),);
  }
  Widget ImageSlider(){
    return  GetBuilder<DetailScreenController>(
      builder: (_) =>
      controller.isloading
      ? Container(
      // height: 350.h,
      child: Column(

        children: [
          SizedBox(height: 0.h,),
          //Spacer(),
          Image.network(
            AppConfig.RAW_BASE_URL1+'/'+controller.DetailScreenList[0].thumbnailImage?? 'https://spectrum-sitecore-spectrumbrands.netdna-ssl.com/~/media/SmallAppliancesUS/Black%20and%20Decker/Product%20Page/garment/Traditional/ICR19XS/ICR19XSPrd1_NS_HR.jpg?h=2000&la=en&w=2000',
            height: 350.h,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    ) :
      Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white70,
        child: Container(child: Center(child: Text("Loading..."),),)));
  }
  Widget ColorSelect (clr1,clr2){
    return Container(
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: clr2,
        // image: DecorationImage(
        //   image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
        //   fit: BoxFit.cover,
        // ),
        borderRadius: BorderRadius.all( Radius.circular(30.0)),
        border: Border.all(
          color: clr1,
          width: 3.3,
        ),
      ),
    );
  }
}
