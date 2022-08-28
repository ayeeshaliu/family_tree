import 'package:flutter/material.dart';

import '../HomeScreenTab/HomeScreen.dart';


class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  static const List<Widget> _pages = [];

  int _selectedItems = 0;

  Color? color = Colors.grey[500];

  void _onItemTapped(int index) {
    setState(() {
      _selectedItems = index;
    });
  }

  List<Widget> _tabs =[
    HomeScreen(),
    MemoriesScreen(),
    TreeScreen(),
    JournalScreen(),
    HealthScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: _tabs.elementAt(_selectedItems),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //selectedItemColor: Colors.amber[400],
        unselectedLabelStyle: TextStyle(
            color: Colors.grey[500]
        ),
        selectedLabelStyle: TextStyle(
            color: Colors.grey[500]
        ),
        fixedColor: Colors.grey[500],
        unselectedItemColor: Colors.grey[500],
        items: [
          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/navicons/home.png"),
          ),
              label: "Home"),

          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/navicons/memories.png"),
          ),
              label: "Memories"),

          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/navicons/tree.png"),
          ),
              label: "Tree"),


          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/navicons/journal.png"),
          ),
              label: "Journal"),

          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/navicons/health.png"),
          ),
              label: "Health"),
        ],
        currentIndex: _selectedItems,
        onTap: _onItemTapped,
      ),



    );
  }
}



class MemoriesScreen extends StatelessWidget {
  const MemoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Feeling lost but now..."),
      ),
    );
  }
}

class TreeScreen extends StatelessWidget {
  const TreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("I breathe it in"),
      ),
    );
  }
}

class JournalScreen extends StatelessWidget {
  const JournalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("To let it go"),
      ),
    );
  }
}

class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("And you don't know!"),
      ),
    );
  }
}




