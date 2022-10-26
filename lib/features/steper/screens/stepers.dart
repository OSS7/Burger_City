import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/users/models/user.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:burger_city/features/users/providers/users.dart';
import 'package:burger_city/features/users/screens/user_info_screen.dart';
import 'package:burger_city/features/dishes/screens/meals_screen.dart';
import 'package:burger_city/features/order/screens/review_task.dart';
import 'package:provider/provider.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({Key? key}) : super(key: key);

  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Stepper(
                  elevation: 5.0,
                  type: StepperType.horizontal,
                  physics: const ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      title: const Text('Information'),
                      content: CustomerDetailsScreen(
                        idController: idController,
                        nameController: nameController,
                        addressController: addressController,
                        numberController: numberController,
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: const Text('Meals'),
                      content: const MealsApp(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: const Text('Review'),
                      content: ReviewTask(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    final user = Provider.of<Users>(context,listen: false);
    final task = Provider.of<Orders>(context,listen: false);
    if(_currentStep == 0){

      if (idController.text.isNotEmpty  && nameController.text.isNotEmpty && addressController.text.isNotEmpty) {
        task.defineUser(User(
        id: idController.text,
        name: nameController.text,
        address: addressController.text,
        number: numberController.text
            ));
        user.insertUser(User(
        id: idController.text,
        name: nameController.text,
        address: addressController.text,
        number: numberController.text
            ));
        setState(() {
          _currentStep += 1;
        });
      }else{
        // final box = GetStorage();
        ScaffoldMessenger.of(context).showSnackBar( SnackBar(backgroundColor: primaryClr,content: Text('Please fill the data')));
      }
    }
    else if(_currentStep == 1){
      setState(() {
        _currentStep += 1;
      });
    }
    else{
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                'This data will be deleted and you will make new order!',style: _dialogBodyTextStyle,),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('No',style: _dialogChoicesTextStyle,)),
                TextButton(
                    onPressed: () {
                      setState(() => _currentStep = 0);
                      task.resetData();
                      idController.clear();
                      nameController.clear();
                      numberController.clear();
                      addressController.clear();
                      Navigator.pop(context);
                    },
                    child: Text('Ok',style: _dialogChoicesTextStyle,)),
              ],
            );
          });
    }

    
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
  final TextStyle _dialogChoicesTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: primaryClr,
  );
  final TextStyle _dialogBodyTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );
}
