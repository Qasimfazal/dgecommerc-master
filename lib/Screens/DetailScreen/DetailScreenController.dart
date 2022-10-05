

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Config.dart';
import 'DtailModel.dart';

class DetailScreenController extends GetxController{
  String id = Get.arguments;
  String? firstHalf ;
  String  blank = '';
  String? secondHalf ;
  bool flag = true;
  var DetailScreenList =[].obs;
 // List<DetailScreenModel> DetailScreenList=<DetailScreenModel>[].obs;
  Dio dio = new Dio();
  bool isloading = false;
  bool DescriptionContainer =false;

  @override
  void onInit() async{ // called immediately after the widget is allocated memory
   log(id);
   await getProduct(id:id);
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
    super.onInit();
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

}