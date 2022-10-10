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

  Future<LoginResponse> getLoginResponse(
      @required String email, @required String password) async {
    var post_body = jsonEncode({
      "email": "${email}",
      "password": "$password",
      "identity_matrix": AppConfig.purchase_code
    });

    Uri url = Uri.parse("${AppConfig.BASE_URL}/auth/login");
    final response = await http.post(url,
        headers: {
          "Accept": "*/*",
          "Content-Type": "application/json",
          "App-Language": app_language.$,
        },
        body: post_body);

    return loginResponseFromJson(response.body);
  }
}