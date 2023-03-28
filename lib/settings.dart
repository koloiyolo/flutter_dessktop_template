

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'globals.dart' as globals;



class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      backgroundColor: Color.fromARGB(129, 255, 127, 42),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Option 1', style:TextStyle(fontSize: globals.textSize, color: Colors.white)),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(' Toggle',  style:TextStyle(fontSize: globals.textSize)  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Option 2', style:TextStyle(fontSize: globals.textSize, color: Colors.white)  ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(' Toggle',  style:TextStyle(fontSize: globals.textSize)  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Option 3', 
                style:TextStyle(fontSize: globals.textSize, color: Colors.white)  ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(' Toggle',style:TextStyle(fontSize: globals.textSize)  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Option 4',
                style:TextStyle(fontSize: globals.textSize, color: Colors.white)  ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(' Toggle', 
                  style:TextStyle(fontSize: globals.textSize)  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Option 5', 
                style:TextStyle(fontSize: globals.textSize, color: Colors.white)  ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(' Toggle', 
                  style:TextStyle(fontSize: globals.textSize)  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Text Size', 
                style:TextStyle(fontSize: globals.textSize, color: Colors.white)  ),
                const SizedBox(width: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          globals.textSize = 17.0;
                        });;
                      },
                      child: Text('Small', style:TextStyle(fontSize: globals.textSize)  ),
                    ),
                    const SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          globals.textSize = 30;
                        });
                      },
                      child: Text('Big', style:TextStyle(fontSize: globals.textSize)  ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
