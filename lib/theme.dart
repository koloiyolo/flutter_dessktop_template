
library globals;

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dessktop_template/home.dart';

//LightMode
var thememode = ThemeMode.light;
var fontSize = 17.0; // small
//navRail indexes

Widget page = const HomePage(); //tmp page variable for Navigation rail

//lightMode
//var lightModeSeed = const Color.fromARGB(255, 189, 82, 39);
var lightModeBackground = const Color.fromARGB(255, 255, 255, 255);
var lightNavColor = const Color.fromARGB(255, 235, 235, 235);
var lightNavIconColor = const Color.fromARGB(255, 60, 60, 60);
var lightSelectedNavButtonColor = const Color.fromARGB(255, 200, 200, 200);
var lightTextColor = const Color.fromARGB(255, 0, 0, 0);
var lightCardColor = const Color.fromARGB(255, 245, 245, 245);
var lightButtonColor = const Color.fromARGB(255, 100, 100, 100);

//darkMode
//var darkModeSeed = const Color.fromARGB(255, 189, 82, 39);
var darkModeBackground = const Color.fromARGB(255, 100, 100, 100);
var darkNavColor = const Color.fromARGB(255, 90, 90, 90);
var darkNavIconColor = const Color.fromARGB(255, 255, 255, 255);
var darkSelectedNavButtonColor = const Color.fromARGB(255, 120, 120, 120);
var darkTextColor = const Color.fromARGB(255, 255, 255, 255);
var darkCardColor = const Color.fromARGB(255, 200, 200, 200);
var darkButtonColor = const Color.fromARGB(255, 60, 60, 60);

//Mode vars
var backgroundColor = lightModeBackground;
var seedColor =lightCardColor;
var navColor = lightNavColor;
var navIconColor = lightNavIconColor;
var selectedNavButtonColor = lightSelectedNavButtonColor;
var textColor =lightTextColor;
var buttonColor = lightButtonColor;
var buttonTextColor = darkTextColor;
var cardColor = lightCardColor;

void applyDarkTheme () {
          backgroundColor = darkModeBackground;
          navColor= darkNavColor;
          navIconColor = darkNavIconColor;
          selectedNavButtonColor = darkSelectedNavButtonColor;
          textColor = darkTextColor;
          cardColor = darkNavColor;
          buttonColor = darkButtonColor;
}

void applyLightTheme () {
            backgroundColor=lightModeBackground;
            navColor = lightNavColor;
            navIconColor = lightNavIconColor;
            selectedNavButtonColor = lightSelectedNavButtonColor;
            textColor = lightTextColor;
            cardColor = lightCardColor;
            buttonColor = lightButtonColor;
}