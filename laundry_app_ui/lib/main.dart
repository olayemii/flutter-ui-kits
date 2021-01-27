import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_screenutil/screenutil_init.dart';
=======
import 'package:flutter_screenutil/flutter_screenutil.dart';
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app_ui/pages/dashboard.dart';
import 'package:laundry_app_ui/pages/home.dart';
import 'package:laundry_app_ui/pages/login.dart';
import 'package:laundry_app_ui/pages/single_order.dart';
<<<<<<< HEAD
=======
import 'package:laundry_app_ui/utils/constants.dart';
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
<<<<<<< HEAD
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(245, 247, 249, 1),
=======
        title: "Flutter Laundry UI",
        theme: ThemeData(
          scaffoldBackgroundColor: Constants.scaffoldBackgroundColor,
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        initialRoute: "/",
        onGenerateRoute: _onGenerateRoute,
      ),
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Login();
      });
    case "/dashboard":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Dashboard();
      });
    case "/single-order":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SingleOrder();
      });
<<<<<<< HEAD
=======

>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
