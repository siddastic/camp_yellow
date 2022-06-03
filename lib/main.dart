import 'package:cy_assignment/screens/tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camp Yellow Assignment',
      darkTheme: ThemeData.dark().copyWith(
        platform: TargetPlatform.iOS,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.amber,
        highlightColor: Colors.pink.shade700,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ).copyWith(secondary: Colors.pink.shade700),
      ),
      themeMode: ThemeMode.dark,
      home: const TabScreen(),
    );
  }
}
