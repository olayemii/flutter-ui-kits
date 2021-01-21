import 'package:e_learning_ui_one/pages/home/home.dart';
import 'package:e_learning_ui_one/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'eLearning UI',
          theme: ThemeData(
            primaryColor: Constants.primaryColor,
            scaffoldBackgroundColor: Color.fromRGBO(244, 246, 252, 1),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          initialRoute: "/",
          onGenerateRoute: _onGenerateRoute,
        ),
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
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
