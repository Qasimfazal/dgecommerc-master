

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Config.dart';
import 'DtailModel.dart';
import 'RelatedProductModel.dart';
import 'TopSellingModel.dart';

class DetailScreenController extends GetxController{
  String id = Get.arguments;
  String? firstHalf ;
  String  blank = '';
  String? secondHalf ;
  bool flag = true;
  var DetailScreenList =[].obs;
  var TopSellingList =[].obs;
  var RelatedProductList =[].obs;
 // List<DetailScreenModel> DetailScreenList=<DetailScreenModel>[].obs;
  Dio dio = new Dio();
  bool isloading = false;
  bool isloadingRelated = false;
  bool DescriptionContainer =false;

  @override
  void onInit() async{ // called immediately after the widget is allocated memory
   log(id);
   await getProduct(id:id);
   await  getTopselling(id:id);
   await RelatedProduct(id:id);
   if(DetailScreenList[0].description != null) {
     if (DetailScreenList[0].description.length > 150) {
       firstHalf =
           DetailScreenList[0].description.substring(10, 50);
       secondHalf =
           DetailScreenList[0].description.substring(
               50, DetailScreenList[0].description.length);
     } else {
       firstHalf = DetailScreenList[0].description;
       secondHalf = "";
     }
   } else {
     DescriptionContainer = true;
     update();
   }
   final  prefs = await SharedPreferences.getInstance();
    super.onInit();
  }
  void pageRefresh(id)async{
     isloading = false;
     isloadingRelated = false;
     DescriptionContainer =false;
     update();
    await getProduct(id:id);
    await  getTopselling(id:id);
    await RelatedProduct(id:id);
     isloading = true;
     isloadingRelated = true;
     DescriptionContainer =true;
     update();
  }
  void flagCondition(){
    flag = !flag;
    update();
  }
  Future<RxList>getProduct ({id}) async {

      try {
        DetailScreenList.clear();
        //DetailScreenList[0].photos.clear();
        print(AppConfig.BASE_URL+'/products/'+id);
        var responce = await dio.get(AppConfig.BASE_URL+'/products/'+id);
        // print(responce);
        if (responce.statusCode == 200) {
          for (var i in responce.data['data']) {
            DetailScreenList.add(DetailScreenModel.fromJson(i));
          }

          isloading = true;
          update();

        }else{
          Get.snackbar('Error',"Status 404");
          update();
        }
      }
      catch(e){
        Get.snackbar('Important',e.toString());
        update();

    }

    return DetailScreenList;
  }
  Future<RxList>getTopselling ({id}) async {


    try {
      TopSellingList.clear();
      //DetailScreenList[0].photos.clear();
      print('https://turkishemarket.com/api/v1/products/top-from-seller/'+id);
      var responce = await dio.get('https://turkishemarket.com/api/v1/products/top-from-seller/'+id);
     // print(responce);
      if (responce.statusCode == 200) {
        for (var i in responce.data['data']) {
          TopSellingList.add(TopSellingModel.fromJson(i));
        }

        isloading = true;
        update();

      }else{
        Get.snackbar('Error',"Status 404");
        update();
      }
    }
    catch(e){
      Get.snackbar('Important',e.toString());
      update();
    }
    return TopSellingList;
  }
  Future<RxList>RelatedProduct ({id}) async {
    log('Enter Relatedproduct ');

    try {
      RelatedProductList.clear();
      print('entr');
      //DetailScreenList[0].photos.clear();
      var responce = await dio.get('https://turkishemarket.com/api/v1/products/related/'+id);
     // print(responce);
      if (responce.statusCode == 200) {
        for (var i in responce.data['data']) {
          RelatedProductList.add(RelatedProductModel.fromJson(i));
        }

        isloadingRelated = true;
        update();

      }else{
        Get.snackbar('Error',"Status 404");
        update();
      }
    }
    catch(e){
      Get.snackbar('Important',e.toString());
      update();
    }
    return RelatedProductList;
  }

}