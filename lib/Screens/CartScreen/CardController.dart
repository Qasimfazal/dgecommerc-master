
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
///eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjY1YmNkYTFmYjc0YzU1Y2JlM2UxMjZhZTAwZWEyMjliOGRhYzY0NDMwMGVkYTBiOWM1YTE2NDAxN2Q2MTMyZDQyNjYxNGIxYzIyNDY5MjQyIn0.eyJhdWQiOiIxIiwianRpIjoiNjViY2RhMWZiNzRjNTVjYmUzZTEyNmFlMDBlYTIyOWI4ZGFjNjQ0MzAwZWRhMGI5YzVhMTY0MDE3ZDYxMzJkNDI2NjE0YjFjMjI0NjkyNDIiLCJpYXQiOjE2NjUxNDY1NDcsIm5iZiI6MTY2NTE0NjU0NywiZXhwIjoxNjk2NjgyNTQ3LCJzdWIiOiI5MiIsInNjb3BlcyI6W119.kKdT6s4uYL1dIkCO-ACobokP1Yz0PVyvBsM2qM5yu33PZnegr5YbG8OYCaEFHGj3ZLA2Fa6-563mLog4HioCMQsOJrJZnS79OEiYGEbPBzssweCSwGWaxfPOBwM22NZVbUQeNaFyb2mTZSSfb--SdUUpDUtbuDA467axvrqk77tt-Zo6p0a8A9NaRJ62x8BXZ9yCsOPfdQ5oAq_-RkqpOGGTuK7_YiXD8-uikgYU2YJ_NvhmCCq_Gu7jhfPb6crAs64BNMs629Jg7T6aOR6fjILWNAKZOwG33-cuWW9QNjMvIgUU40NcVNtge89rODDe8a5FLOPMzym-m1cYkTthlX_0vdQGpcqDBCwPB9B1qeGC7scuIwn3EUYz3yHpzbv-a8viKX6jov1Crwl2Ip8avt147lXKEYdEbvvEjm-pzdQhYqTuQUY4TzZpQ20tFeh64hEaKGtfKxcDjmZzXsAX9fhY4GuWs9dY4WqocL4ej6KBGYzzi_VQyXCS1Kl_Ckqnl2rk7-VOyKpvRnjqBuLSGwbfpCEwfPK8B2rQQAuHA7cyqRLacpH1kdQ85a_eK3zstq2HLkEJpc5hBF5q1eW9kpKOor4He7yAbW9ksjBwZkE1T3QNWiuveaA6wewOsOIRYxhxyZcyp7pqQMljWdv9yYXKrHJhrmuwhKVro0JPp7c
class CartController extends GetxController {
  int  count = 0;
  void Addfunc (){
    count  ++;
    update();
  }
  void Subtract (){
    count  --;
    update();

  }
  @override
  void onInit()async {
    final  prefs = await SharedPreferences.getInstance();
    super.onInit();
  }

  // Future<WishListChekResponse> add({@required product_id = 0}) async {
  //   Uri url = Uri.parse(
  //       "${AppConfig.BASE_URL}/wishlists-add-product?product_id=${product_id}");
  //
  //   print(url.toString());
  //   final response = await http.get(
  //     url,
  //     headers: {
  //       "Authorization": "Bearer ${access_token.$}",
  //       "App-Language": app_language.$,
  //     },
  //   );
  //
  //   return wishListChekResponseFromJson(response.body);
  // }
}