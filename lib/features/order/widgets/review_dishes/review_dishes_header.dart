import 'package:burger_city/core/constant.dart';
import 'package:flutter/material.dart';

class ReviewDishesHeader extends StatelessWidget {
  ReviewDishesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.2,
              child: Text(
                'Dish name',
                style: tableHeadTextStyle,
              ),
            ),
            Text(
              'Quantity',
              style: tableHeadTextStyle,
            ),
            SizedBox(
              width: size.width * 0.4,
              child: Center(
                child: Text(
                  'Notes',
                  style: tableHeadTextStyle,
                ),
              ),
            ),
            Text(
              'Price',
              style: tableHeadTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  final TextStyle tableHeadTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: primaryClr,
  );
}
