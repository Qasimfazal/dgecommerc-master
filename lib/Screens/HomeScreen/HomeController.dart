import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../Config.dart';
import '../../Global.dart';
import 'HomeModel.dart';
import 'MiniModel.dart';

class HomeController extends GetxController{
  List<HomeMeodel> productlist=<HomeMeodel>[].obs;
  List<MiniCardModel> MiniCardList=<MiniCardModel>[].obs;
  Dio dio = new Dio();
  bool isloadingExplore = false;
  bool isloadingMiniCard = false;
  @override
  void onInit() { // called immediately after the widget is allocated memory
    getProductExplore();
    getProductBestSeller();
    super.onInit();
  }
  Future<List<HomeMeodel>>getProductExplore () async {
    try {
      productlist.clear();
      print(BASE_URL);
      var responce = await dio.get(AppConfig.BASE_URL+'/products');
      if (responce.statusCode == 200) {
        for (var i in responce.data['data']) {
          productlist.add(HomeMeodel.fromJson(i));
        }
        isloadingExplore = true;
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
    return productlist;
  }

  Future<List<MiniCardModel>>getProductBestSeller () async {
    try {
      MiniCardList.clear();
      print(BASE_URL);
      var responce = await dio.get(AppConfig.BASE_URL+'/products/best-seller');
      if (responce.statusCode == 200) {

        for (var i in responce.data['data']) {
          MiniCardList.add(MiniCardModel.fromJson(i));
        }
        isloadingMiniCard = true;
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
    return MiniCardList;
  }
}