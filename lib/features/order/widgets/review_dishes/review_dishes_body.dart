import 'package:burger_city/features/order/providers/orders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewDishesBody extends StatelessWidget {
  const ReviewDishesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final task = Provider.of<Orders>(context, listen: true);

    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: task.dishes.length,
          itemBuilder: (context, index) {
            final order = task.dishes[index];
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.2,
                      child: Text(
                        order.title,
                      ),
                    ),
                    Text(
                      'x${order.quantity.toString()}',
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: order.notes?.length ?? 0,
                        itemBuilder: (context, i) {
                          return Text(order.notes!.isEmpty
                              ? 'No notes'
                              : '${i + 1}. ${order.notes?[i] ?? 'null'}');
                        },
                      ),
                    ),
                    Text(
                      '${(order.price * order.quantity!.toInt()).toStringAsFixed(2)}\$',
                    )
                  ],
                ),
                const Divider()
              ],
            );
          }),
    );
  }
}
