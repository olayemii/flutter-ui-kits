import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_ui/pages/notifications.dart';
import 'package:news_ui/pages/page_switch.dart';
import 'package:news_ui/pages/single_news_page.dart';
import 'package:news_ui/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Constants.primaryColor,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.ptSerifTextTheme(),
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
        return PageSwitch();
      });
    case "/notifications":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Notifications();
      });
    case "/search-results":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Notifications();
      });
    case "/single-news":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SingleNewsPage();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return PageSwitch();
      });
  }
}
