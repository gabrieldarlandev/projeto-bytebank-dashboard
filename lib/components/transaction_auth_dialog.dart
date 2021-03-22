import 'package:flutter/material.dart';

class TransactionAuthDialiog extends StatefulWidget {
  final Function(String password) onConfirm;

  TransactionAuthDialiog({
    @required this.onConfirm,
  });

  @override
  _TransactionAuthDialiogState createState() => _TransactionAuthDialiogState();
}

class _TransactionAuthDialiogState extends State<TransactionAuthDialiog> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Authenticate'),
      content: TextField(
        controller: _passwordController,
        obscureText: true,
        maxLength: 4,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 64,
          letterSpacing: 24,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            widget.onConfirm(_passwordController.text);
            Navigator.pop(context);
          },
          child: Text('Confirm'),
        ),
      ],
    );
  }
}
