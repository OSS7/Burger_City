import 'dart:math';

import 'package:flutter/material.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/users/models/user.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:burger_city/features/users/providers/users.dart';
import 'package:burger_city/core/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class CustomerDetailsScreen extends StatefulWidget {
  final TextEditingController idController;
  final TextEditingController nameController;
  final TextEditingController addressController;
  final TextEditingController numberController;
  const CustomerDetailsScreen(
      {Key? key,
      required this.idController,
      required this.nameController,
      required this.addressController,
      required this.numberController})
      : super(key: key);

  @override
  State<CustomerDetailsScreen> createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final task = Provider.of<Orders>(context);
    final user = Provider.of<Users>(context);

    return SafeArea(
      child: SizedBox(
        height: size.height *0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text(
              'User Info',
              style: _headerTextStyle,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  // width: size.width * 0.5,
                  height: size.height * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            // width: size.width * 0.2,
                            child: CustomTextField(
                              isSmall: true,
                              onChanged: (value) {
                                setState(() {
                                  int.parse(widget.idController.text) >= 150
                                      ? widget.idController.clear()
                                      : null;
                                });
                              },
                              controller: widget.idController,
                              hint: 'ID',
                            ),
                          ),
                          // const Spacer(),
                          TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(secondaryClr!),
                                  padding: MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.all(15)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(lightClr!),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          side: BorderSide(color: secondaryClr!)))),
                              onPressed: () {
                                setState(() {
                                  if (widget.idController.text.isEmpty) {
                                    //if Generatet
                                    int.parse(user.items.isEmpty ? '-1' : user.items.last.id) < 150 //show error message if there is more than 150 user _ demo app
                                        ? widget.idController.text = user.items.isEmpty
                                            ? '0'
                                            : (int.parse(user.items.last.id) + 1).toString()
                                        : ScaffoldMessenger.of(context).showSnackBar( // error message
                                            SnackBar(
                                                backgroundColor: primaryClr,
                                                content: Text(
                                                    'The app is not valid anymore please contact with the developer'
                                                    ' to give you the full version of the applications')));
                                  } else {
                                    // if Find
                                    List<User> foundedUsers = user.items
                                        .where((element) =>
                                            element.id ==
                                            widget.idController.text.toString())
                                        .toList();
                                    if (foundedUsers.isNotEmpty) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                'User Founded \n Do you want to fill the field ?',
                                                style: _dialogBodyTextStyle,
                                              ),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(
                                                      'No',
                                                      style: _dialogChoicesTextStyle,
                                                    )),
                                                TextButton(
                                                    onPressed: () {
                                                      widget.nameController.text =
                                                          foundedUsers.first.name;
                                                      widget.addressController.text =
                                                          foundedUsers.first.address;
                                                      widget.numberController.text =
                                                          foundedUsers.first.number;
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Yes',
                                                      style: _dialogChoicesTextStyle,
                                                    )),
                                              ],
                                            );
                                          });
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                'Sorry user not founded ',
                                                style: _dialogBodyTextStyle,
                                              ),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(
                                                      'Ok',
                                                      style: _dialogChoicesTextStyle,
                                                    )),
                                              ],
                                            );
                                          });
                                    }
                                  }
                                });
                              },
                              child: Text(
                                  widget.idController.text.isEmpty ? "GENERATE" : 'FIND',
                                  style: TextStyle(color: lightClr!))),
                        ],
                      ),
                      CustomTextField(
                        controller: widget.nameController,
                        hint: 'Full name',
                      ),
                      CustomTextField(
                        controller: widget.numberController,
                        hint: 'Phone number',
                      ),
                      CustomTextField(
                        controller: widget.addressController,
                        hint: 'Address',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextStyle _headerTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: primaryClr,
  );
  final TextStyle _dialogChoicesTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: primaryClr,
  );
  final TextStyle _dialogBodyTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );
}
