import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewUserSection extends StatelessWidget {
  ReviewUserSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final task = Provider.of<Orders>(context);

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.14,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'User',
                style: _headSectionTextStyle,
              ),
              Container(
                padding: edge5,
                width: size.width,
                // height: size.height * 0.07,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Time',
                          style: _userInfoSectionTextStyle,
                        ),
                        FittedBox(
                          child: Text(
                            '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}, ${DateTime.now().hour}:${DateTime.now().minute}',
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: secondaryClr,
                      height: 23,
                      width: 1,
                      margin: edge5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Address',
                          style: _userInfoSectionTextStyle,
                        ),
                        Text(task.user?.address.toString() ?? ''),
                      ],
                    ),
                    Container(
                      color: secondaryClr,
                      height: 23,
                      width: 1,
                      margin: edge5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          task.user?.name ?? '',
                          style: _userInfoSectionTextStyle,
                        ),
                        Text(task.user?.number ?? ''),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        SizedBox(
          height: size.height * 0.05,
        ),
      ],
    );
  }

  final TextStyle _headSectionTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );
  final TextStyle _userInfoSectionTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: primaryClr,
  );
}
