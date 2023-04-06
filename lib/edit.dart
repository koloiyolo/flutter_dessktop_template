import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/backend.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'theme.dart' as theme;

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: buildText("editPage")),
        ],
      ),
    );
  }
}

Text buildText(String text) {
  return Text(text,
      style: TextStyle(fontSize: theme.textSize, color: theme.textColor));
}

 ElevatedButton editButton(BuildContext context) {
    return ElevatedButton.icon(
            onPressed: () {
              var nameField = 'XD';
              var f1, f2, f3, f4;
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
                // f1controller.clear();
                // f2controller.clear();
                // f3controller.clear();
                // f4controller.clear();
                // f5controller.clear();
            },
            icon: Icon(Icons.save, color: theme.buttonTextColor),
            style: ElevatedButton.styleFrom(
                backgroundColor: theme.buttonColor,
                surfaceTintColor: theme.cardColor),
            label: Text(
              'Apply Changes',
              style: TextStyle(
                  fontSize: theme.textSize * 2,
                  color: theme.buttonTextColor),
            ),
          );
  }