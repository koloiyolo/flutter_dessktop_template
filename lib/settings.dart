import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class SettingsState extends StatelessWidget {
  const SettingsState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(181, 242, 117, 68),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Option 1'),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(' Toggle'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Option 2'),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(' Toggle'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Option 3'),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(' Toggle'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Option 4'),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(' Toggle'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Option 5'),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(' Toggle'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Option 6'),
                const SizedBox(width: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(' Toggle'),
                    ),
                    const SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(' Toggle'),
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
