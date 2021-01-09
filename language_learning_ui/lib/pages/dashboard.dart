import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/widgets/border_text_field.dart';
import 'package:language_learning_ui/widgets/topic_card.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                      radius: 25.0,
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Hello,\n",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color.fromRGBO(152, 156, 173, 1),
                            ),
                          ),
                          TextSpan(
                            text: "Jennifer Lee",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Constants.primaryTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        FlutterIcons.bell_fea,
                        color: Constants.primaryTextColor,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                BorderTextField(
                  prefixIcon: Icon(
                    FlutterIcons.search_fea,
                    color: Colors.grey,
                  ),
                  borderRadius: 50.0,
                  hintText: "Search...",
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: ScreenUtil().setHeight(150.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return TopicCard();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
