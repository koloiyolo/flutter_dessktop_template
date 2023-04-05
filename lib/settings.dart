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
          Card(
            color: globals.cardColor,
            surfaceTintColor: globals.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildText("Option 1"),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle"),
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
                  buildText("Option 2"),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
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
                  buildText("Option 3"),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
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
                 buildText("Option 4"),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
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
                  buildText("Option 5"),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: globals.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
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
                  buildText("Font Size"),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: globals
                                .buttonColor), //<====== Working on that rn
                        onPressed: () {
                          setState(() {
                            globals.textSize--;
                          });
                          ;
                        },
                        icon:
                            Icon(Icons.remove, color: globals.buttonTextColor),
                        label: buildButtonText("Minus"),
                      ),
                      const SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: globals.buttonColor),
                        onPressed: () {
                          setState(() {
                            globals.textSize++;
                          });
                        },
                        icon: Icon(Icons.add, color: globals.buttonTextColor),
                        label: buildButtonText("Plus"),
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
  Text buildButtonText(String text) {
    return Text(text,
                      style: TextStyle(
                          fontSize: globals.textSize,
                          color: globals.buttonTextColor));
  }

  Text buildText(String text) {
    return Text(text,
                    style: TextStyle(
                        fontSize: globals.textSize,
                        color: globals.textColor));
  }

