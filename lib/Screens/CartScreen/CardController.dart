
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../ProfileScreen/loginController.dart';
import 'CardModel.dart';
///eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjY1YmNkYTFmYjc0YzU1Y2JlM2UxMjZhZTAwZWEyMjliOGRhYzY0NDMwMGVkYTBiOWM1YTE2NDAxN2Q2MTMyZDQyNjYxNGIxYzIyNDY5MjQyIn0.eyJhdWQiOiIxIiwianRpIjoiNjViY2RhMWZiNzRjNTVjYmUzZTEyNmFlMDBlYTIyOWI4ZGFjNjQ0MzAwZWRhMGI5YzVhMTY0MDE3ZDYxMzJkNDI2NjE0YjFjMjI0NjkyNDIiLCJpYXQiOjE2NjUxNDY1NDcsIm5iZiI6MTY2NTE0NjU0NywiZXhwIjoxNjk2NjgyNTQ3LCJzdWIiOiI5MiIsInNjb3BlcyI6W119.kKdT6s4uYL1dIkCO-ACobokP1Yz0PVyvBsM2qM5yu33PZnegr5YbG8OYCaEFHGj3ZLA2Fa6-563mLog4HioCMQsOJrJZnS79OEiYGEbPBzssweCSwGWaxfPOBwM22NZVbUQeNaFyb2mTZSSfb--SdUUpDUtbuDA467axvrqk77tt-Zo6p0a8A9NaRJ62x8BXZ9yCsOPfdQ5oAq_-RkqpOGGTuK7_YiXD8-uikgYU2YJ_NvhmCCq_Gu7jhfPb6crAs64BNMs629Jg7T6aOR6fjILWNAKZOwG33-cuWW9QNjMvIgUU40NcVNtge89rODDe8a5FLOPMzym-m1cYkTthlX_0vdQGpcqDBCwPB9B1qeGC7scuIwn3EUYz3yHpzbv-a8viKX6jov1Crwl2Ip8avt147lXKEYdEbvvEjm-pzdQhYqTuQUY4TzZpQ20tFeh64hEaKGtfKxcDjmZzXsAX9fhY4GuWs9dY4WqocL4ej6KBGYzzi_VQyXCS1Kl_Ckqnl2rk7-VOyKpvRnjqBuLSGwbfpCEwfPK8B2rQQAuHA7cyqRLacpH1kdQ85a_eK3zstq2HLkEJpc5hBF5q1eW9kpKOor4He7yAbW9ksjBwZkE1T3QNWiuveaA6wewOsOIRYxhxyZcyp7pqQMljWdv9yYXKrHJhrmuwhKVro0JPp7c
class CartController extends GetxController {

  @override
  void onInit() async{
    print("Enter");

    await getCard();
    super.onInit();

  }



  Dio dio = Dio();
  // void Addfunc (count){
  //   print(count);
  //   quantity  ++;
  //   //return quantity;
  // //  update();
  // }
  // void Subtract (count){
  //   quantity  --;
  // //  update();
  // //  return quantity;
  // }

  bool isLoading = false ;
  //var CardList = [].obs;
  List<CardModel> CardList=<CardModel>[].obs;
  dynamic product = [].obs;
  List<int> count = [] ;

  //https://turkishemarket.com/api/v2/carts/92

  Future<List<CardModel>> getCard() async {
    print("Enter get card");
   final logincontroller = Get.find<LoginController>();
   final token = logincontroller.LoginList[0].access_token;
   final bearer = "Bearer "+token;
   final id = logincontroller.LoginList[0].user.id.toString();
   // print(id);
   // print(bearer);
    CardList.clear();

    // var params =  {
    //   "Authorization" : bearer ,
    // };
    // var response = await dio.post('https://turkishemarket.com/api/v2/carts/${id}',
    // options: Options(headers: {
    //   HttpHeaders.contentTypeHeader: "application/json",
    // }),
    // data: jsonEncode(params),
    // );
    // print(response);


    var responce = await dio.post('https://turkishemarket.com/api/v2/carts/${id}',
         options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
           HttpHeaders.authorizationHeader :bearer,
        }),

        );
    if (responce.statusCode == 200) {
      for (var i in responce.data) {
        CardList.add(CardModel.fromJson(i));
      }

      isLoading = true ;
       product=CardList;
      // int a = product.length;
      // for(int i = 0 ; i >= a ; i ++){
      //   print(i);
      //   count = product[i].cartItems[i].quantity;
      //   update();
      // }



      update();

    }else{
      Get.snackbar('Error',"Status 404");
      update();
    }
    // print(LoginList.expires_at.toString());
    return CardList;

    print(await responce);
  }
}