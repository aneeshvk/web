import 'package:flutter/material.dart';

bool showCounterExample = false;
showMessage(context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.blueAccent, content: Text(message)));
}

showConfirmation(context, String captionText, Function onOkSelection) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Confirmation"),
        content: Text(captionText),
        actions: [
          ElevatedButton(
              onPressed: () {
                onOkSelection("ok selected");
                Navigator.of(context).pop();
              },
              child: const Text("ok")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("cancel"))
        ],
      );
    },
  );
}
