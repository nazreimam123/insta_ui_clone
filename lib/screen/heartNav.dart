import 'package:flutter/material.dart';
import 'package:insta_ui_clone/screen/followingFav.dart';
import 'package:insta_ui_clone/screen/youFav.dart';

class Heartnav extends StatefulWidget {
  const Heartnav({super.key});

  @override
  State<Heartnav> createState() => _HeartnavState();
}

class _HeartnavState extends State<Heartnav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(
        
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          toolbarHeight: 40,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.only(bottom: 10),

            tabs: [
            Text('Following'),
            Text('You'),
          ]),
        ),
        body: TabBarView(children: [
          Followingfav(),
          Youfav(),
        ]),
        
      ),
    );
  }
}