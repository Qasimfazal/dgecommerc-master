
import 'package:dgecommerc/Getstarted/GetStartedScreen.dart';
import 'package:dgecommerc/Getstarted/Splash.dart';
import 'package:get/get.dart';

import 'Screens/DetailScreen/DetailScreen.dart';
import 'Screens/HomeScreen/HomeScreen.dart';

appRoutes() => [
  GetPage(
    name: '/home',
    page: () =>  HomeView(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/splash',
    page: () => const SplashScreen(),
   // middlewares: [MyMiddelware()],
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/getstarted',
    page: () =>const  GetStarted(),
   // middlewares: [MyMiddelware()],
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/detailscreen',
    page: () =>  DetailProductScreen(),
   // middlewares: [MyMiddelware()],
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 500),
  ),
];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}