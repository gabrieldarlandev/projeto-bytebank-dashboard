import 'package:flutter/material.dart';
import 'package:projeto_dashboard/http/webclient.dart';
import 'package:projeto_dashboard/models/contact.dart';
import 'package:projeto_dashboard/models/transaction.dart';
import 'package:projeto_dashboard/screens/dashboard.dart';

void main() {
  runApp(BytebankApp());
  save(Transaction(999.9,Contact(0,'karla',2000))).then((value) => print('$value'));
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
