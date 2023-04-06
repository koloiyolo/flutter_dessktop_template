import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/add.dart';
import 'package:flutter_dessktop_template/edit.dart';
import 'package:flutter_dessktop_template/home.dart';
import 'package:flutter_dessktop_template/settings.dart';

import 'theme.dart' as theme;


void main() {
  runApp(
     const MyApp(),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 125, 125, 125)),
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
  int lastIndex = 0;
  int index = 0;
  int darkModeToggle = 0;
  Icon darkLightModeIcon = const Icon(Icons.dark_mode);
  Text darkLightModeText = const Text('Dark Mode');
  @override
  Widget build(BuildContext context) {

    
    switch(index){
      case 0: 
        theme.page = const HomePage();
        lastIndex = 0;
      break;
      case 1: 
        theme.page = const AddPage();
        lastIndex = 1;
      break;
      case 2:
        theme.page = const EditPage();
        lastIndex = 2;
      break;
      case 3: 
        theme.page = const SettingsPage();
        lastIndex = 3;
      break;
      case 4:
        if(darkModeToggle==0){
          darkLightModeIcon = const Icon(Icons.light_mode);
          darkLightModeText = const Text('Light Mode');
          darkModeToggle = 1;

          theme.applyDarkTheme();
          }else{
            darkLightModeIcon = const Icon(Icons.dark_mode);
            darkLightModeText = const Text('Dark Mode');
            darkModeToggle = 0;

            theme.applyLightTheme();
          } 
        
      break;
    }

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: lastIndex,
            selectedLabelTextStyle: TextStyle(color: theme.navIconColor),
            selectedIconTheme: IconThemeData(color: theme.navIconColor),
            indicatorColor: theme.selectedNavButtonColor,

            unselectedLabelTextStyle: TextStyle(color: theme.navIconColor),
            unselectedIconTheme: IconThemeData(color: theme.navIconColor),
            
            backgroundColor: theme.navColor,
            extended: true,
            minExtendedWidth: 170,
            destinations:[
              const NavigationRailDestination(
                icon: Icon(Icons.home), 
                label: Text('Main Page')),

              const NavigationRailDestination(
                icon: Icon(Icons.add_box), 
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
          onDestinationSelected: (value){
            setState(() {
              index = value;});
            
          },),
          Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.tertiary,
            child: theme.page,
          )
        )
        ],
      )
    );
  }
}



