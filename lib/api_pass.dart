// ignore_for_file: library_private_types_in_public_api, camel_case_types, avoid_print

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

//void main() => runApp(const api_pass());

class api_pass extends StatelessWidget {
  const api_pass({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fetch Data Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<album> _album = [];

  // Function to fetch data from the internet
  Future<void> fetchData() async {
    var url = Uri.parse(
        'https://jsonplaceholder.typicode.com/albums'); // Replace with your API URL.
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<album> albums = data.map((json) => album.fromJson(json)).toList();

      setState(() {
        _album = albums;
      });
    } else {
      print('Failed to fetch data: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: ListView.builder(
        itemCount: _album.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(_album[index].id.toString(),style: TextStyle(color: Colors.pinkAccent),),
              Text(_album[index].title),
            ],
          );
        },
      ),
    );
  }
}

class album {
  final int id;
  final String title;

  album({required this.id, required this.title});

  factory album.fromJson(Map<String, dynamic> json) {
    return album(
      id: json['id'],
      title: json['title'],
    );
  }
}
