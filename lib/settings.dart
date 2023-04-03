import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'globals.dart' as globals;

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globals.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Option 1',
                      style: TextStyle(
                          fontSize: globals.textSize, color: globals.textColor)),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: Text(' Toggle',
                        style: TextStyle(
                            fontSize: globals.textSize,
                            color: globals.buttonTextColor)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Option 2',
                      style: TextStyle(
                          fontSize: globals.textSize, color: globals.textColor)),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: Text(' Toggle',
                        style: TextStyle(
                            fontSize: globals.textSize,
                            color: globals.buttonTextColor)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Option 3',
                      style: TextStyle(
                          fontSize: globals.textSize, color: globals.textColor)),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: Text(' Toggle',
                        style: TextStyle(
                            fontSize: globals.textSize,
                            color: globals.buttonTextColor)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Option 4',
                      style: TextStyle(
                          fontSize: globals.textSize, color: globals.textColor)),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: Text(' Toggle',
                        style: TextStyle(
                            fontSize: globals.textSize,
                            color: globals.buttonTextColor)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Option 5',
                      style: TextStyle(
                          fontSize: globals.textSize, color: globals.textColor)),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: Text(' Toggle',
                        style: TextStyle(
                            fontSize: globals.textSize,
                            color: globals.buttonTextColor)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
              color: globals.cardColor,
              surfaceTintColor: globals.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Text Size',
                      style: TextStyle(
                          fontSize: globals.textSize, color: globals.textColor)),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                globals.buttonColor), //<====== Working on that rn
                        onPressed: () {
                          setState(() {
                            globals.textSize --;
                          });
                          ;
                        },
                        icon: Icon(Icons.remove, color: globals.buttonTextColor), 
                        label : Text('Minus',
                            style: TextStyle(
                                fontSize: globals.textSize,
                                color: globals.buttonTextColor)),
                      ),
                      const SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: globals.buttonColor),
                        onPressed: () {
                          setState(() {
                            globals.textSize ++;
                          });
                        },
                        icon: Icon(Icons.add, color: globals.buttonTextColor),
                        label: Text('Plus',
                            style: TextStyle(
                                fontSize: globals.textSize,
                                color: globals.buttonTextColor)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
