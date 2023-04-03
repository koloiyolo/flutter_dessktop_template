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
            const SizedBox(height: 3),
            Card(
              color: globals.cardColor,
                child: Row(
              children: [
                Expanded(
                  child: Text("Field 1",
                      style: TextStyle(
                          color: globals.textColor,
                          fontSize: globals.textSize)),
                ),
                Expanded(
                  child: TextField(
                      cursorColor: globals.textColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: globals.textColor,
                      ),
                      style: TextStyle(
                          fontSize: globals.textSize,
                          color: globals.textColor)),
                )
              ],
            )),
           Card(
              color: globals.cardColor,
                child: Row(
              children: [
                Expanded(
                  child: Text("Field 1",
                      style: TextStyle(
                          color: globals.textColor,
                          fontSize: globals.textSize)),
                ),
                Expanded(
                  child: TextField(
                      cursorColor: globals.textColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: globals.textColor,
                      ),
                      style: TextStyle(
                          fontSize: globals.textSize,
                          color: globals.textColor)),
                )
              ],
            )),
            Card(
              color: globals.cardColor,
                child: Row(
              children: [
                Expanded(
                  child: Text("Field 1",
                      style: TextStyle(
                          color: globals.textColor,
                          fontSize: globals.textSize)),
                ),
                Expanded(
                  child: TextField(
                      cursorColor: globals.textColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: globals.textColor,
                      ),
                      style: TextStyle(
                          fontSize: globals.textSize,
                          color: globals.textColor)),
                )
              ],
            )),
            Card(
              color: globals.cardColor,
                child: Row(
              children: [
                Expanded(
                  child: Text("Field 1",
                      style: TextStyle(
                          color: globals.textColor,
                          fontSize: globals.textSize)),
                ),
                Expanded(
                  child: TextField(
                      cursorColor: globals.textColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: globals.textColor,
                      ),
                      style: TextStyle(
                          fontSize: globals.textSize,
                          color: globals.textColor)),
                )
              ],
            )),
            Card(
              color: globals.cardColor,
                child: Row(
              children: [
                Expanded(
                  child: Text("Field 1",
                      style: TextStyle(
                          color: globals.textColor,
                          fontSize: globals.textSize)),
                ),
                Expanded(
                  child: TextField(
                      cursorColor: globals.textColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: globals.textColor,
                      ),
                      style: TextStyle(
                          fontSize: globals.textSize,
                          color: globals.textColor)),
                )
              ],
            )),
            const SizedBox(height: 10),
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
