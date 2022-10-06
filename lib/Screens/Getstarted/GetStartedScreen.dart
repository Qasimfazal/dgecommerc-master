import 'package:dgecommerc/Global.dart';
import 'package:dgecommerc/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Image.asset(
              'assets/logo/img.png',
              // width: size.width/2,
              height: 220.h,
            ),
            // Text(
            //   'Digital-Graphiks',
            //   style: logotsyle,
            // ),
           const Spacer(),
            WelcomeContainer(),
          ],
        ),
      ),
    );
  }

  Widget WelcomeContainer() {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 300.h,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Welcome,",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: secondBlack,
                  fontSize: 40.sp),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy your shopping..",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: secondBlack,
                      fontSize: 20.sp),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Easy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: secondBlack,
                        fontSize: 30.sp),
                    children: [
                      TextSpan(
                        text: ' & ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30.sp
                        ),
                      ),
                      TextSpan(
                        text: 'Fast!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 30.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),


            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Text(
                  'Welcome to a Platform of trust...',
                  style:
                      TextStyle(color: Colors.grey.shade600, fontSize: 15.sp),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){
                   Get.toNamed("/navbar");
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: primaryColor,
                    child: Icon(Icons.arrow_forward_outlined,size: 30.h,color: Colors.white,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
