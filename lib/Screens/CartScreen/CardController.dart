
import 'package:get/get.dart';

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
}