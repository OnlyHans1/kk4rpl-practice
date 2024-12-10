import 'package:flutter/material.dart';

class FormPages extends StatefulWidget {
  const FormPages({super.key});

  @override
  State<FormPages> createState() => _FormPagesState();
}

class _FormPagesState extends State<FormPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text(
          "Formulir"
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Nama Lengkap",
                labelText: "Nama Lengkap",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only( top: 20),),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only( top: 20),),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}