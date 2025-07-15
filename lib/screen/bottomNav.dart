import 'package:flutter/material.dart';
import 'package:insta_ui_clone/screen/heartNav.dart';
import 'package:insta_ui_clone/screen/homeNav.dart';
import 'package:insta_ui_clone/screen/postNav.dart';
import 'package:insta_ui_clone/screen/profileNav.dart';
import 'package:insta_ui_clone/screen/searchNav.dart';

class Instasearch extends StatefulWidget {
  const Instasearch({super.key});

  @override
  State<Instasearch> createState() => _InstasearchState();
}
 
class _InstasearchState extends State<Instasearch> {
  
  int currIdx=0;
  List<Widget> pages=[
    Homenav(),
    Searchnav(),
    Postnav(),
    Heartnav(),
    Profilenav(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: currIdx,
       

        onTap: (idx) {
          setState(() {
            currIdx=idx;
          });
        },
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.circle),label: 'Profile'),
      ]),
     
      
      body: IndexedStack(
        children:pages,
        index: currIdx,
      ),

    );

  }
}