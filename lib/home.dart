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
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: ListView.builder(
          padding: const EdgeInsets.all(30),
          itemCount: myList.length,
          itemBuilder: (BuildContext context, index) {
            return listNode(index);
          }),
    );
  }
}

Column listNode(int index) {
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

Text buildText(String text) {
  return Text(text,
      style: TextStyle(fontSize: theme.textSize, color: theme.textColor));
}

Text buildButtonText(String text) {
  return Text(text,
      style: TextStyle(fontSize: theme.textSize, color: theme.buttonTextColor));
}
