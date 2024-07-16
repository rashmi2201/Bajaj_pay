import 'package:flutter/material.dart';
import 'package:flutter_application_7/IconText2.dart';
import 'package:flutter_application_7/autoadjustable.dart';
import 'package:flutter_application_7/card_first.dart';
import 'package:flutter_application_7/card_second.dart';
//import 'package:flutter_application_7/card_three.dart';
import 'package:flutter_application_7/icontext1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: ' Englebert',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<IconTextModel> list = [];

  @override
  void initState() {
    initListItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return IconText1(
                              mIcon: list[index].icon,
                              mName: list[index].name,
                              mOnTap: () {
                                if (list[index].name == 'All') {
                                  print('on TAPPED ALL');
                                } else if (list[index].name!.toLowerCase() ==
                                    'cards'.toLowerCase()) {
                                  print('on TAPPED CArds');
                                }
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card_first(),
            Card_second(),
            // Card_three(),
            AutoScrollCards(),
          ],
        ),
      ),
    );
  }

  void initListItems() {
    list.add(IconTextModel(icon: Icons.circle, name: 'All'));
    list.add(IconTextModel(icon: Icons.circle, name: 'Loans'));
    list.add(IconTextModel(icon: Icons.circle, name: 'Electronics'));
    list.add(IconTextModel(icon: Icons.circle, name: 'Cards'));
    list.add(IconTextModel(icon: Icons.circle, name: 'Lifestyle'));
    list.add(IconTextModel(icon: Icons.circle, name: 'Insurance'));
    list.add(IconTextModel(icon: Icons.circle, name: 'Investment'));
    list.add(IconTextModel(icon: Icons.circle, name: 'Home loans'));

    setState(() {});
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 120);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 34, 58),
      flexibleSpace: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Icon(Icons.menu_sharp, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 27),
                  child: Icon(Icons.apple_sharp, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    'Apple',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Icon(Icons.wallet, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 10),
                  child: Icon(
                    Icons.notification_important_rounded,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 20, left: 10),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.white,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Search me',
                          hintStyle: TextStyle(color: Colors.black54),
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          suffixIcon: Icon(Icons.mic)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
