import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/backend.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import 'theme.dart' as theme;

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
        backgroundColor: theme.backgroundColor,
        body: ListView(
          padding: const EdgeInsets.all(30),
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
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  var nameField = f1controller.text;
                  var f1 = f2controller.text;
                  var f2 = f3controller.text;
                  var f3 = f4controller.text;
                  var f4 = f5controller.text;
                  if(nameField.isNotEmpty){
                    myList.add(Something(nameField, f1, f2, f3, f4));
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      content: Text('Object $nameField has been created'),
                    );
                  });
                  }else{
                    showDialog(context: context, builder: (context){
                      return const AlertDialog(
                        alignment: Alignment.center,
                        content: Text('Please fill the form')
                      );
                    }
                    );
                  }
                    f1controller.clear();
                    f2controller.clear();
                    f3controller.clear();
                    f4controller.clear();
                    f5controller.clear();
                },
                icon: Icon(Icons.add_box, color: theme.buttonTextColor),
                style: ElevatedButton.styleFrom(
                    backgroundColor: theme.buttonColor,
                    surfaceTintColor: theme.cardColor),
                label: Text(
                  'ADD',
                  style: TextStyle(
                      fontSize: theme.textSize * 2,
                      color: theme.buttonTextColor),
                ),
              ),
            ),
            const SizedBox(height: 10),
            
            const SizedBox(height: 80)
          ],
        ));
  }

  Card buildTextField(String text, var controller) {
    return Card(
              color: theme.cardColor,
              child: Row(
                children: [
                  Expanded(
                    child: Text(text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: theme.textColor,
                            fontSize: theme.textSize)),
                  ),
                  Expanded(
                    child: TextFormField(
                        controller: controller,
                        cursorColor: theme.textColor,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          fillColor: theme.textColor,
                        ),
                        style: TextStyle(
                            fontSize: theme.textSize,
                            color: theme.textColor)),
                  )
                ],
              ));
  }
}
