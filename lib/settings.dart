import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/backend.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

import 'theme.dart' as theme;

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Card(
            color: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  optionText('Add test object'),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor),
                    onPressed: () { myList.add(Something('Object${myList.length+2}', 'DX', 'XD', 'DX', 'XD'));},
                    child: buildButtonText('Add'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  optionText('Option 2'),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  optionText('Option 3'),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 optionText('Option 4'),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  optionText('Option 5'),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor),
                    onPressed: () {},
                    child: buildButtonText("Toggle")
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  optionText('Font Size'),
                  const SizedBox(width: 30),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor),
                    onPressed: () {
                      setState(() {
                        theme.textSize--;
                      });
                      ;
                    },
                    icon:
                        Icon(Icons.remove, color: theme.buttonTextColor),
                    label: buildButtonText("Minus"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor),
                    onPressed: () {
                      setState(() {
                        theme.textSize++;
                      });
                    },
                    icon: Icon(Icons.add, color: theme.buttonTextColor),
                    label: buildButtonText("Plus"),
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
Expanded optionText(String text) => Expanded(
  child: Row(
    children: [
      const SizedBox(width: 350),
      buildText(text),
    ],
  ));

  Text buildButtonText(String text) {
    return Text(text,
                      style: TextStyle(
                          fontSize: theme.textSize,
                          color: theme.buttonTextColor));
  }

  Text buildText(String text) {
    return Text(text,
                    style: TextStyle(
                        fontSize: theme.textSize,
                        color: theme.textColor));
  }

