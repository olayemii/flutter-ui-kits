import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:laundry_app_ui/utils/constants.dart';

class SingleOrder extends StatefulWidget {
  const SingleOrder({super.key});

  @override
  State<SingleOrder> createState() => _SingleOrderState();
}

class _SingleOrderState extends State<SingleOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 0.0,
            top: 10.0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "assets/images/washing_machine_illustration.png",
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: kToolbarHeight,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Ionicons.arrow_back_outline,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Details About\n",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        TextSpan(
                          text: "Order #521",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Constants.scaffoldBackgroundColor,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                      horizontal: 16.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order Details",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: const Color.fromRGBO(74, 77, 84, 1),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          "WASHING AND FOLDING",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(143, 148, 162, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        getItemRow("3", "T-shirts (man)", "\$30.00"),
                        getItemRow("2", "T-shirts (man)", "\$40.00"),
                        getItemRow("4", "Pants (man)", "\$80.00"),
                        getItemRow("1", "Jeans (man)", "\$20.00"),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Text(
                          "IRONING",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(143, 148, 162, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        getItemRow("3", "T-shirt (woman)", "\$30.00"),
                        const Divider(),
                        getSubtotalRow("Subtotal", "\$200.00"),
                        getSubtotalRow("Delivery", "\$225.00"),
                        const SizedBox(
                          height: 10.0,
                        ),
                        getTotalRow("Total", "\$225.00"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    height: ScreenUtil().setHeight(127.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Your clothes are now washing.",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: const Color.fromRGBO(74, 77, 84, 1),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Estimated Delivery\n",
                                    style: TextStyle(
                                      color: Color.fromRGBO(143, 148, 162, 1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "24 January 2021",
                                    style: TextStyle(
                                      color: Color.fromRGBO(74, 77, 84, 1),
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              "assets/images/washlogo.png",
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget getTotalRow(String title, String amount) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color.fromRGBO(19, 22, 33, 1),
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          amount,
          style: TextStyle(
            color: Constants.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 17.0,
          ),
        )
      ],
    ),
  );
}

Widget getSubtotalRow(String title, String price) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          price,
          style: const TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
          ),
        )
      ],
    ),
  );
}

Widget getItemRow(String count, String item, String price) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      children: [
        Text(
          count,
          style: const TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Text(
            " x $item",
            style: const TextStyle(
              color: Color.fromRGBO(143, 148, 162, 1),
              fontSize: 15.0,
            ),
          ),
        ),
        Text(
          price,
          style: const TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
          ),
        )
      ],
    ),
  );
}
