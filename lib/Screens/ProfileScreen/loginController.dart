import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Config.dart';
import '../CartScreen/CardController.dart';
import 'LoginModel.dart';

class LoginController extends GetxController{
 // final cartcontroller = Get.find<CartController>;
  bool isLogin = false;
  String? em ;
  String? pass;
Dio dio = Dio();

  var LoginList =[].obs;
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  void Signout(){
    isLogin =false;
    update();
  }


   Future<RxList>  getLoginResponse(@required String email, @required String password) async {
    var responce = await dio.post('https://turkishemarket.com/api/v2/auth/login',
    data: {
    "email" : email,
      "password" : password,
    });
    if (responce.statusCode == 200) {
      //for (var i in responce.data['data']) {
      LoginList.add(await LoginModel.fromJson(responce.data));
      print(responce.data);
     isLogin = LoginList[0].result;
      update();

    }else{
      Get.snackbar('Error',"Status 404");
      update();
    }
   // print(LoginList.expires_at.toString());
    return LoginList;

    print(await responce);
  }
}