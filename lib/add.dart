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
  final f1controller = TextEditingController();
  final f2controller = TextEditingController();
  final f3controller = TextEditingController();
  final f4controller = TextEditingController();
  final f5controller = TextEditingController();
  var field1;
  var field2;
  var field3;
  var field4;
  var field5;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    f1controller.dispose();
    f2controller.dispose();
    f3controller.dispose();
    f4controller.dispose();
    f5controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: globals.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            //textFields
            const SizedBox(height: 10),
            buildTextField("Field1", f1controller),
            const SizedBox(height: 10),
            buildTextField("Field2", f2controller),
            const SizedBox(height: 10),
            buildTextField("Field3", f3controller),
            const SizedBox(height: 10),
            buildTextField("Field4", f4controller),
            const SizedBox(height: 10),
            buildTextField("Field5", f5controller),
            const SizedBox(height: 15),

            //button
            ElevatedButton.icon(
              onPressed: () {
                field1 = f1controller.text;
                field2 = f2controller.text;
                field3 = f3controller.text;
                field4 = f4controller.text;
                field5 = f5controller.text;
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    content: Text("Created: "+ field1 + "/" + field2 + "/" + field3 + "/" + field4)
                  );
                });
              },
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
            const SizedBox(height: 10),
            
            const SizedBox(height: 80)
          ],
        ));
  }

  Card buildTextField(String text, var controller) {
    return Card(
              color: globals.cardColor,
              child: Row(
                children: [
                  Expanded(
                    child: Text("Field 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: globals.textColor,
                            fontSize: globals.textSize)),
                  ),
                  Expanded(
                    child: TextFormField(
                        controller: controller,
                        validator: (value) {},
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
              ));
  }
}
