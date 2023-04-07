import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/backend.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'theme.dart' as theme;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    color: theme.textColor, fontSize: theme.textSize * 1.2),
              ))
            ],
          ));
    }
  }

  Column listNode(int index, BuildContext context) {
    return Column(
      children: [
        Card(
          color: theme.cardColor,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                  child: buildText('${index + 1}. ${myList[index].getName()}'),
                )),
                const SizedBox(width: 30),
                ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: theme.backgroundColor,
                              content: buildText(
                                  'Object info \n\nName: ${myList[index].getName()}\nField1: ${myList[index].getField1()}\nField2: ${myList[index].getField2()}\nField3: ${myList[index].getField3()}\nField4: ${myList[index].getField4()}'),
                            );
                          });
                    },
                    icon: const Icon(Icons.info),
                    label: buildButtonText('Info'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.buttonColor,
                        surfaceTintColor: theme.cardColor)),
                const SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    // what button does
                  },
                  icon: const Icon(Icons.play_arrow),
                  label: buildButtonText('Start'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: theme.buttonColor,
                      surfaceTintColor: theme.cardColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}

Text buildText(String text) {
  return Text(text,
      style: TextStyle(fontSize: theme.textSize, color: theme.textColor));
}

Text buildButtonText(String text) {
  return Text(text,
      style: TextStyle(fontSize: theme.textSize, color: theme.buttonTextColor));
}
