

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Config.dart';
import 'DtailModel.dart';

class DetailScreenController extends GetxController{
  String id = Get.arguments;
  var DetailScreenList =[].obs;
 // List<DetailScreenModel> DetailScreenList=<DetailScreenModel>[].obs;
  Dio dio = new Dio();
  bool isloading = false;
  @override
  void onInit() { // called immediately after the widget is allocated memory
   log(id);
    getProduct(id:id);
    super.onInit();
  }
  Future<RxList>getProduct ({id}) async {
    try {
      DetailScreenList.clear();
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