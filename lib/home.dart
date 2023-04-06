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
      body: ListTile(
        contentPadding: const EdgeInsetsDirectional.all(8.0),
        title: tile(),
      ),
    );
  }
}

class tile extends StatelessWidget {
  const tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: theme.cardColor,
      child: Text(myList[0].getName()),
    );
  }
}

Text buildText(String text) {
    return Text(text,
                    style: TextStyle(
                        fontSize: theme.textSize,
                        color: theme.textColor));
}

