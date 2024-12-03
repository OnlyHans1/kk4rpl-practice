import 'package:flutter/material.dart';

class SnackbarPages extends StatefulWidget {
  const SnackbarPages({super.key});

  @override
  State<SnackbarPages> createState() => _SnackbarPagesState();
}

class _SnackbarPagesState extends State<SnackbarPages> {
  String teks = "";

  TextEditingController controllerInput = TextEditingController();
  TextEditingController controllerAlert = TextEditingController();
  TextEditingController controllerSnackbar = TextEditingController();

  void _alertdialog(String str) {
    if (str.isEmpty) return;

    AlertDialog alertDialog = AlertDialog(
      content: Text(
        str,
        style: const TextStyle(fontSize: 20),
      ),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("OK"))
      ],
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  void _snackbar(String str) {
    if (str.isEmpty) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          str,
          style: const TextStyle(fontSize: 20),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input, Alert, Snackbar Pages"),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: controllerInput,
              decoration: const InputDecoration(hintText: "Tulis di sini"),
              onSubmitted: (String str) {
                setState(() {
                  teks = '$str\n$teks';
                  controllerInput.text = "";
                });
              },
            ),
            Text(
              teks,
              style: const TextStyle(fontSize: 20),
            ),
            TextField(
              controller: controllerAlert,
              decoration:
                  const InputDecoration(hintText: "Tulis untuk Alert..."),
              onSubmitted: (String str) {
                _alertdialog(str);
                controllerAlert.text = "";
              },
            ),
            TextField(
              controller: controllerSnackbar,
              decoration:
                  const InputDecoration(hintText: "Tulis untuk Snackbar..."),
              onSubmitted: (String str) {
                _snackbar(str);
                controllerSnackbar.text = "";
              },
            ),
          ],
        ),
      ),
    );
  }
}
