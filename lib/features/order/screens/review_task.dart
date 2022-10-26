import 'package:burger_city/features/order/widgets/review_dishes_section.dart';
import 'package:burger_city/features/order/widgets/review_user_section.dart';
import 'package:flutter/material.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:provider/provider.dart';

class ReviewTask extends StatelessWidget {
  ReviewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final task = Provider.of<Orders>(context);

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Order Information', style: _headerTextStyle),
          SizedBox(
            height: size.height * 0.03,
          ),
          ReviewUserSection(),
          ReviewDishesSection(),
        ],
      ),
    );
  }

  final TextStyle _headerTextStyle = TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.bold,
    color: primaryClr,
  );
  final TextStyle _headSectionTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );

  final TextStyle tableHeadTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: primaryClr,
  );
  final TextStyle _totalPriceTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );
}
