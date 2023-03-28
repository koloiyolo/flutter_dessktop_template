import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const NavBar()
    );
  }
}


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int lastSelected= 0;
  int dark_mode_toggle = 0;
  int index = 0;
  Icon darkLightModeIcon = Icon(Icons.dark_mode);
  Text darkLightModeText = Text('Dark Mode');
  @override
  Widget build(BuildContext context) {

    Widget page = Placeholder();
    switch(index){
      case 0: 
        page = Placeholder();
        lastSelected = 0;
      break;
      case 1: 
        page = Placeholder();
        lastSelected = 1;
      break;
      case 2:
        page = Placeholder();
        lastSelected = 2;
      break;
      case 3: 
        page = Placeholder();
        lastSelected = 3;
      break;
      case 4:
        if(dark_mode_toggle==0){
          darkLightModeIcon = Icon(Icons.light_mode);
          darkLightModeText = Text('Light Mode');
          dark_mode_toggle = 1;
          }else{
            darkLightModeIcon = Icon(Icons.dark_mode);
            darkLightModeText = Text('Dark Mode');
            dark_mode_toggle = 0;
          } 
        
      break;
    }

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            minExtendedWidth: 170,
            destinations:[
              const NavigationRailDestination(
                icon: Icon(Icons.home), 
                label: Text('Main Page')),

              const NavigationRailDestination(
                icon: Icon(Icons.add), 
                label: Text('Add')),
              
              const NavigationRailDestination(
                icon: Icon(Icons.edit), 
                label: Text('Edit')),
              
              const NavigationRailDestination(
                icon: Icon(Icons.settings), 
                label: Text('Settings')),

              NavigationRailDestination(
                icon: darkLightModeIcon, 
                label: darkLightModeText),
            ], 
          selectedIndex: lastSelected,
          onDestinationSelected: (value){
            setState(() {
              index = value;});
            
          },),
          Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.tertiary,
            child: page,
          )
        )
        ],
      )
    );
  }
}