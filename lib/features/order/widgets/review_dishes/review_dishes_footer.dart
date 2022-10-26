import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewDishesFooter extends StatelessWidget {
  ReviewDishesFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = Provider.of<Orders>(context);
    double total = 0;
    for (var element in task.dishes) {
      total +=
          double.parse((element.price * element.quantity!).toStringAsFixed(2));
    }

    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Total: ${total.toStringAsFixed(2)}\$',
        style: _totalPriceTextStyle,
      ),
    );
  }

  final TextStyle _totalPriceTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );
}
