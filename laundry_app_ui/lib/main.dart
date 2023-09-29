import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app_ui/pages/dashboard.dart';
import 'package:laundry_app_ui/pages/home.dart';
import 'package:laundry_app_ui/pages/login.dart';
import 'package:laundry_app_ui/pages/single_order.dart';
import 'package:laundry_app_ui/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Laundry UI",
        theme: ThemeData(
          scaffoldBackgroundColor: Constants.scaffoldBackgroundColor,
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
        return const Home();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const Login();
      });
    case "/dashboard":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const Dashboard();
      });
    case "/single-order":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SingleOrder();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const Home();
      });
  }
}
