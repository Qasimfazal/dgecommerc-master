import 'package:dgecommerc/Global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets/Button.dart';
import '../../Widgets/SearchTextform.dart';
import 'loginController.dart';

class ProfileScreen extends StatelessWidget {
  LoginController loginCont = Get.put(LoginController());


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Center(child: Text("PROFILE")),
        actions: [
          GetBuilder<LoginController>(
            builder: (dx) => InkWell(
              onTap: (){
                dx.Signout();
              },
              child: Icon(
                Icons.power_settings_new,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: GetBuilder<LoginController>(
          builder: (dx) =>
          dx.isLogin
              ? Container(
            height: size.height,
            width: size.width,
            color: primaryColor,
            child: Login(),
          )
              : Container(
            height: size.height,
            width: size.width,
            color: primaryColor,
            child: SigninForm(),
          )

      ),
    );
  }

  Widget SigninForm() {
    return GetBuilder<LoginController>(
      builder: (_dx) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SearchTextFormField( 'email', 70.h, 300.w,
                  TextController: _dx.Email,
                  fillcolor: Colors.white,
                  iconprefix: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  )),
              SearchTextFormField('Password', 70.h, 300.w,
                  TextController: _dx.Password,
                  fillcolor: Colors.white,
                  iconprefix: Icon(
                    Icons.password_outlined,
                    color: Colors.white,
                  )),
            ],
          ),
          InkWell(
            onTap: () async{
              // print(_dx.em);
              // print(_dx.Password);
await _dx.getLoginResponse(_dx.Email.text, _dx.Password.text);
          //  print(  loginCont.LoginList[0].email);
            //  _dx.login(_dx.Email, _dx.Password);
            },
            child:Container(
              height: 50.h,
              width: 300.w,
              color: Colors.black,
              child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }

  Widget Login() {
    return GetBuilder<LoginController>(
        builder: (_dx) => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 125.0,
          height: 125.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            border: Border.all(
              color: Colors.white,
              width: 3.3,
            ),
          ),
        ),
        Text(_dx.LoginList[0].user.name ??'Muhammad Qasim Mehmood',
            style: TextStyle(
              color: Colors.white,
            )),
        Text(_dx.LoginList[0].user.email??'Qasimfazal27@gmail.com',
            style: TextStyle(
              color: Colors.white,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_dx.LoginList[0].user.phone??'+92023098766',
                style: TextStyle(
                  color: Colors.white,
                )),
            // SizedBox(width: 10,),
            Container(
                height: 40,
                // width: 30,
                child: Text(
                  "|",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),
            Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            Text(
              'Dubai United Arab Emarate ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 5.h),
          child: Container(
            height: 100.0,
            // width: 205.0,
            decoration: BoxDecoration(
              color: Colors.white60,
              // image: DecorationImage(
              //   image: NetworkImage('https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
              //   fit: BoxFit.cover,
              // ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(
                color: Colors.white,
                width: 2.3,
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fact_check_outlined,
                    size: 60.sp,
                    color: Colors.white,
                  ),
                  Text(
                    '20 \nOrders',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 60.sp,
                    color: Colors.white,
                  ),
                  Text(
                    '\$200 \nBalance',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ]),
          ),
        ),
      ],
    )
    );
  }
}

//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: primaryColor,
//         title: Center(child: Text("PROFILE")),
//         actions: const [
//           Icon(
//             Icons.power_settings_new,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//         ],
//       ),
//       body: Container(
//         height: size.height,
//         width: size.width,
//         color: primaryColor,
//         child: isLogin? Login() : Signin(),
//       ),
//     );
//   }
//   Widget Signin(){
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Column(
//           children: [
//             SearchTextFormField('Email', 70.h, 300.w,fillcolor: Colors.white,iconprefix: Icon(Icons.email_outlined,color: Colors.white,)),
//
//             SearchTextFormField('Password', 70.h, 300.w,fillcolor: Colors.white,iconprefix: Icon(Icons.password_outlined,color: Colors.white,)),
//           ],
//         ),
//         ButtonWidget("Login",),
//       ],
//     );
//   }
//   Widget Login() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           width: 125.0,
//           height: 125.0,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(
//                   'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
//               fit: BoxFit.cover,
//             ),
//             borderRadius: BorderRadius.all(Radius.circular(30.0)),
//             border: Border.all(
//               color: Colors.white,
//               width: 3.3,
//             ),
//           ),
//         ),
//         Text('Muhammad Qasim Mehmood',
//             style: TextStyle(
//               color: Colors.white,
//             )),
//         Text('Qasimfazal27@gmail.com',
//             style: TextStyle(
//               color: Colors.white,
//             )),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text('+92023098766',
//                 style: TextStyle(
//                   color: Colors.white,
//                 )),
//             // SizedBox(width: 10,),
//             Container(
//                 height: 40,
//                 // width: 30,
//                 child: Text(
//                   "|",
//                   style: TextStyle(color: Colors.white, fontSize: 30),
//                 )),
//             Icon(
//               Icons.location_on_outlined,
//               color: Colors.white,
//             ),
//             Text(
//               'Dubai United Arab Emarate ',
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 5.h),
//           child: Container(
//             height: 100.0,
//             // width: 205.0,
//             decoration: BoxDecoration(
//               color: Colors.white60,
//               // image: DecorationImage(
//               //   image: NetworkImage('https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
//               //   fit: BoxFit.cover,
//               // ),
//               borderRadius: BorderRadius.all(Radius.circular(10.0)),
//               border: Border.all(
//                 color: Colors.white,
//                 width: 2.3,
//               ),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//               Icon(Icons.fact_check_outlined,size: 60.sp,color: Colors.white,),
//              Text('20 \nOrders',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.white),),
//               Icon(Icons.account_balance_wallet_outlined,size: 60.sp,color: Colors.white,),
//                   Text('\$200 \nBalance',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.white),),
//
//                 ]),
//           ),
//         ),
//       ],
//     );
//   }
// }
