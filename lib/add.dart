import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'globals.dart' as globals;

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: globals.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Textfield1: ',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                  Text(' 2',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Textfield2: ',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                  Text(' 2',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Textfield3: ',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                  Text(' 2',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Textfield4: ',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                  Text(' 2',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Textfield5: ',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                  Text(' 2',
                      style: TextStyle(
                          fontSize: globals.textSize * 1.5,
                          color: globals.textColor)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add_box, color: globals.buttonTextColor),
              style: ElevatedButton.styleFrom(
                  backgroundColor: globals.buttonColor,
                  surfaceTintColor: globals.cardColor),
              label: Text(
                'ADD',
                style: TextStyle(
                    fontSize: globals.textSize * 2,
                    color: globals.buttonTextColor),
              ),
            ),
            const SizedBox(height: 80)
          ],
        ));
  }
}
