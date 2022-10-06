
import 'package:get/get.dart';
import 'Screens/BottomNavbar/bottomNavbar.dart';
import 'Screens/CartScreen/CartScreen.dart';
import 'Screens/DetailScreen/DetailScreen.dart';
import 'Screens/Getstarted/GetStartedScreen.dart';
import 'Screens/Getstarted/Splash.dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/ProfileScreen/ProfileScreen.dart';

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
    page: () =>  GetStarted(),
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
  GetPage(
    name: '/cardscreen',
    page: () =>  CartScreen(),
   // middlewares: [MyMiddelware()],
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/navbar',
    page: () =>  MyDashBoard(),
   // middlewares: [MyMiddelware()],
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/profile',
    page: () =>  ProfileScreen(),
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