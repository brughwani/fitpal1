import 'package:fitpal/Chat.dart';
import 'package:fitpal/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:  SweatyNinjas(),
    );
  }
}
class SweatyNinjas extends StatefulWidget {
  SweatyNinjas({Key? key}) : super(key: key);

  @override
  State<SweatyNinjas> createState() => _SweatyNinjasState();
}

class _SweatyNinjasState extends State<SweatyNinjas> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    // add your tab views here
    Home(),
    FitnessChat()

  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/Sweaty Ninjas logo PNG 1.png"),
        centerTitle: true,
        elevation: 0,
      ),
      body: _children[_currentIndex],

      bottomNavigationBar:BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.message),
    label: 'Chat',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
    ),
    ],
      )
    );
  }
}


