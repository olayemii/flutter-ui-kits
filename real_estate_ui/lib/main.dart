import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_ui/pages/authentication.dart';
import 'package:real_estate_ui/pages/filters.dart';
import 'package:real_estate_ui/pages/home.dart';
import 'package:real_estate_ui/pages/search_result.dart';
import 'package:real_estate_ui/pages/welcome.dart';
import 'package:real_estate_ui/utils/constants.dart';

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
          scaffoldBackgroundColor: Color.fromRGBO(247, 249, 255, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        initialRoute: "/authentication",
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
    case "/welcome":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Welcome();
      });
    case "/authentication":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Authentication();
      });
    case "/search-result":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SearchResult();
      });

    case "/filters":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Filters();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
