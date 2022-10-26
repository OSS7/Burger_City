import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/order/widgets/review_dishes/review_dishes_body.dart';
import 'package:burger_city/features/order/widgets/review_dishes/review_dishes_footer.dart';
import 'package:burger_city/features/order/widgets/review_dishes/review_dishes_header.dart';
import 'package:flutter/material.dart';

class ReviewDishesSection extends StatelessWidget {
  ReviewDishesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dishes',
          style: _headSectionTextStyle,
        ),
        const SizedBox(
          height: 30,
        ),
        ReviewDishesHeader(),
        const Divider(),
        const ReviewDishesBody(),
        ReviewDishesFooter(),
      ],
    );
  }

  final TextStyle _headSectionTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );
}
