import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/backend.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'theme.dart' as theme;

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    if (myList.isNotEmpty) {
      return Scaffold(
        backgroundColor: theme.backgroundColor,
        body: ListView.builder(
            padding: const EdgeInsets.all(30),
            itemCount: myList.length,
            itemBuilder: (BuildContext context, index) {
              return listNode(index, context);
            }),
      );
    } else {
      return Scaffold(
          backgroundColor: theme.backgroundColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                'Object list is empty',
                style: TextStyle(
                    color: theme.textColor, fontSize: theme.fontSize * 1.2),
              ))
            ],
          ));
    }
  }
}

Widget listNode(int index, BuildContext context) {
  final f1 = TextEditingController(text: myList[index].getName());
  final f2 = TextEditingController(text: myList[index].getField1());
  final f3 = TextEditingController(text: myList[index].getField2());
  final f4 = TextEditingController(text: myList[index].getField3());
  final f5 = TextEditingController(text: myList[index].getField4());
  return Card(
    color: theme.cardColor,
    child: ExpansionTile(
      collapsedIconColor: const Color.fromARGB(255, 165, 165, 165),
      iconColor: theme.textColor,
      title:
          Center(child: buildText('${index + 1}. ${myList[index].getName()}')),
      children: [
        expansionTile(f1, 'Name: '),
        expansionTile(f2, 'Field1: '),
        expansionTile(f3, 'Field2: '),
        expansionTile(f4, 'Field3: '),
        expansionTile(f5, 'Field4: '),
        const SizedBox(height: 10,),
        Center(child: ElevatedButton.icon(onPressed: (){
          myList[index]=Something(f1.text, f2.text, f3.text, f4.text, f5.text);
          showDialog(context: context, builder: (context){
            return AlertDialog(
              backgroundColor: theme.backgroundColor,
              content: buildText('Changes saved successfully'),
            );
          });

        }, 
        icon: const Icon(Icons.save_alt_outlined), 
        label: buildButtonText('Save'),
        style: ElevatedButton.styleFrom(backgroundColor: theme.buttonColor))),
        const SizedBox(height: 10,)
      ],
    ),
  );
}

Row expansionTile(TextEditingController f, String fieldName) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: buildText(fieldName),
      ),
      Expanded(
          child: TextField(
            style: TextStyle(fontSize: theme.fontSize, color: theme.textColor),
        controller: f,
      )),
    ],
  );
}

Text buildText(String text) {
  return Text(text,
      style: TextStyle(fontSize: theme.fontSize, color: theme.textColor));
}

Text buildButtonText(String text) {
  return Text(text,
      style: TextStyle(fontSize: theme.fontSize, color: theme.buttonTextColor));
}
