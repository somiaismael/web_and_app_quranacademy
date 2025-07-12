import 'package:brra/core/constant/rootsname.dart';
import 'package:brra/core/middleware/mymiddleware.dart';
import 'package:brra/responsive.dart';
import 'package:brra/view/screen/contact_us.dart';
import 'package:brra/view/screen/language.dart';
import 'package:brra/view/screen/main_screen.dart';
import 'package:brra/view/screen/onboarding.dart';
import 'package:brra/view/screen/success_contact_us.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:path/path.dart';

List<GetPage<dynamic>>? rootes = [
  //  GetPage(
  //   name: AppRoute.test,
  //   page: () => const TestView(),

  // ),

//  GetPage(
//     name: "/",
//     page: () => const LanguagePage(),
//     middlewares: [
//       MymiddleWare()
//     ]
//   ),

//   GetPage(
//     name:
//      AppRoute.onboarding
//     ,
//     page: () => const OnBoarding(),
//   ),

  GetPage(
   name: "/"
    //AppRoute.mainscreen
    ,
    page: () => const MainScreen(),
  ),
  GetPage(
    name: AppRoute.success,
    page: () => const SuccessContactUs(),
  ),
   GetPage(
    name: AppRoute.contactus,
    page: () => const ContactUs(),
  ),
];
