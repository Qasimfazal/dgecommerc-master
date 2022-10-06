import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  bool isLogin = false;
  String? em ;
  String? pass;

  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  void Signout(){
    isLogin =false;
    update();
  }
  void login( email , password){
     print('Enter');
    String email = 'Qasim27@gmail.com';
    String Pass = 'Qasim';
    em = Email.text;
    pass = Password.text;
    update();
    if(em == email && pass == Pass){
      isLogin = true;
      update();
      Get.snackbar('Sucess', 'Sucessfully Login');
    }else{
     Get.snackbar('Login Error', 'Wrong Credentials ');
    }
  }

}