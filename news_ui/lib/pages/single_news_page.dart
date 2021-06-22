import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_ui/utils/constants.dart';
import 'package:news_ui/widgets/single_news_header.dart';

class SingleNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: Container(
        height: ScreenUtil().setHeight(100.0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(232, 232, 232, 1),
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write a comment...",
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Transform.rotate(
                  angle: -0.8,
                  child: Icon(
                    FlutterIcons.send_mdi,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleNewsHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Jacob Blake: Trump visits Kenosha to back police...",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "US President Donald Trump has visited Kenosha, Wisconsin, to back law enforcement after the police shooting of a black man sparked civil strife.",
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: ScreenUtil().setHeight(210.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/trump.png",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "By Michael Levenson",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Published Aug. 28, 2020",
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                      Text(
                        "Updated Aug. 29, 2020, 10:48 am ET",
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        """
The president visited areas damaged in the protests, including a burnt-out furniture store and camera shop destroyed in the upheaval.

"These are not acts of peaceful protest, but really domestic terror," he later told local business leaders at a round table meeting in a high school gym.

Mr Trump defended the actions of US police and accused the media of focusing only on "bad" incidents involving officers.

"You have people that choke," he said. "They are under tremendous pressure. And they may be there for 15 years and have a spotless record and all of a sudden they're faced with a decision. They have a quarter of a second to make a decision. And if they make a wrong decision, one way or the other, they're either dead or they're in big trouble.
                        """,
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
