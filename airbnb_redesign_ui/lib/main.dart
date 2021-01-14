import 'package:airbnb_redesign_ui/pages/booking_screen.dart';
import 'package:airbnb_redesign_ui/pages/dashboard.dart';
import 'package:airbnb_redesign_ui/pages/home.dart';
import 'package:airbnb_redesign_ui/pages/sign_up.dart';
import 'package:airbnb_redesign_ui/pages/single_property.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Constants.primaryColor,
          scaffoldBackgroundColor: Color.fromRGBO(229, 229, 229, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.playfairDisplayTextTheme(),
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
    case "/sign-up":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SignUp();
      });
    case "/dashboard":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Dashboard();
      });
    case "/single-property":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SingleProperty();
      });
    case "/booking-screen":
      return MaterialPageRoute(builder: (BuildContext context) {
        return BookingScreen();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
