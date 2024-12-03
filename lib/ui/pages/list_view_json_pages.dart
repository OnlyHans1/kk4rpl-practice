import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ListViewJsonPages extends StatefulWidget {
  const ListViewJsonPages({super.key});

  @override
  State<ListViewJsonPages> createState() => _ListViewJsonPagesState();
}

class _ListViewJsonPagesState extends State<ListViewJsonPages> {
  List<dynamic> dataJSON = [];

  Future<void> ambildata() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    setState(() {
      dataJSON = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Json'),
      ),
      body: ListView.builder(
        itemCount: dataJSON.isEmpty ? 0 : dataJSON.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataJSON[index]['title'],
                      style: const TextStyle(
                        fontSize: 20, 
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      dataJSON[index]['body'],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}