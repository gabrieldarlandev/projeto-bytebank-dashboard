import 'package:flutter/material.dart';
import 'package:projeto_dashboard/models/contact.dart';
import 'package:projeto_dashboard/screens/dashboard.dart';

import 'database/app_database.dart';

void main() {
  runApp(BytebankApp());
  // save(Contact(0, 'José', 2000));
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
