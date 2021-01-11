import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_ui/models/og_tab_item.dart';
import 'package:real_estate_ui/utils/constants.dart';

class OgTab extends StatefulWidget {
  final List<OgTabItem> items;
  OgTab({this.items});

  @override
  _OgTabState createState() => _OgTabState();
}

class _OgTabState extends State<OgTab> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: List.generate(
          widget.items.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: Container(
                height: ScreenUtil().setHeight(47.0),
                decoration: BoxDecoration(
                  color: activeIndex == index
                      ? Color.fromRGBO(230, 236, 254, 1)
                      : Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(index == 0 ? 5 : 0),
                    bottomLeft: Radius.circular(index == 0 ? 5 : 0),
                    topRight: Radius.circular(
                        index == (this.widget.items.length - 1) ? 5 : 0),
                    bottomRight: Radius.circular(
                        index == (this.widget.items.length - 1) ? 5 : 0),
                  ),
                  border: Border.all(
                    color: Color.fromRGBO(216, 227, 255, 1),
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.items[index].title,
                    style: TextStyle(
                      color: activeIndex == index
                          ? Constants.primaryColor
                          : Color.fromRGBO(154, 154, 154, 1),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
