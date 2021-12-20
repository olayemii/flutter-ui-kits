import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/utils/static_tickets_data.dart';
import 'package:airbnb_redesign_ui/widgets/app_bottom_navigation_ticket.dart';
import 'package:airbnb_redesign_ui/widgets/new_ticket_card.dart';
import 'package:airbnb_redesign_ui/widgets/ticket_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationTicket(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(child: SizedBox()),
           
             
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "My Tickets",
                  style: TextStyle(
                    fontSize: 26.0,
                    height: 1,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              
              
              Container(
                //height: ScreenUtil().setHeight(900),
                height: ScreenUtil().setHeight(1400),
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return TicketCard(
                      house: StaticTicketData.properties[index],
                    );
                  },
                  
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: StaticTicketData.properties.length ,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
            
              
              
            ],
          ),
        ),
      ),
    );
  }
}
