import 'package:family_tree/BottomNavBar/tabs.dart';
import 'package:flutter/material.dart';

void main() =>
  runApp(const FamilyTree());


class FamilyTree extends StatelessWidget {
  const FamilyTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      debugShowCheckedModeBanner: false,
    );
  }
}

