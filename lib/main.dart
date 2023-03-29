import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/add.dart';
import 'package:flutter_dessktop_template/edit.dart';
import 'package:flutter_dessktop_template/home.dart';
import 'package:flutter_dessktop_template/settings.dart';
import 'package:provider/provider.dart';
import 'globals.dart' as globals;


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
          useMaterial3: true,
          colorScheme: 
          ColorScheme.fromSeed(seedColor: globals.seedColor)
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: 
          ColorScheme.fromSeed(seedColor: globals.seedColor)
        ),
        themeMode: ThemeMode.light,
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
  int darkModeToggle = 0;
  int index = 0;
  Icon darkLightModeIcon = const Icon(Icons.dark_mode);
  Text darkLightModeText = const Text('Dark Mode');
  @override
  Widget build(BuildContext context) {

    Widget page = const HomePage();
    switch(index){
      case 0: 
        page = const HomePage();
        lastSelected = 0;
      break;
      case 1: 
        page = const AddPage();
        lastSelected = 1;
      break;
      case 2:
        page = const EditPage();
        lastSelected = 2;
      break;
      case 3: 
        page = const SettingsPage();
        lastSelected = 3;
      break;
      case 4:
        if(darkModeToggle==0){
          darkLightModeIcon = const Icon(Icons.light_mode);
          darkLightModeText = const Text('Light Mode');
          darkModeToggle = 1;
          globals.seedColor = globals.darkModeSeed;
          globals.backgroundColor = globals.darkModeBackground;
          globals.navColor= globals.darkNavColor;
          globals.navIconColor = globals.darkNavIconColor;
          globals.selectedNavButtonColor = globals.darkSelectedNavButtonColor;
          }else{
            darkLightModeIcon = const Icon(Icons.dark_mode);
            darkLightModeText = const Text('Dark Mode');
            darkModeToggle = 0;
            globals.seedColor = globals.lightModeSeed;
            globals.backgroundColor=globals.lightModeBackground;
            globals.navColor = globals.lightNavColor;
            globals.navIconColor = globals.lightNavIconColor;
            globals.selectedNavButtonColor = globals.lightSelectedNavButtonColor;
          } 
        
      break;
    }

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedLabelTextStyle: TextStyle(color: globals.navIconColor),
            selectedIconTheme: IconThemeData(color: globals.navIconColor),
            indicatorColor: globals.selectedNavButtonColor,

            unselectedLabelTextStyle: TextStyle(color: globals.navIconColor),
            unselectedIconTheme: IconThemeData(color: globals.navIconColor),
            
            backgroundColor: globals.navColor,
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

