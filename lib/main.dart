import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the SimpleDialog
  SimpleDialog dialog = SimpleDialog(
    title: const Text('Choose an option'),
    children: <Widget>[
      SimpleDialogOption(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Option 1'),
      ),
      SimpleDialogOption(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Option 2'),
      ),
      SimpleDialogOption(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Option 3'),
      ),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}