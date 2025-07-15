import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_ui_clone/screen/profilePost.dart';
import 'package:insta_ui_clone/screen/profileTags.dart';

class Profilenav extends StatefulWidget {
  const Profilenav({super.key});

  @override
  State<Profilenav> createState() => _ProfilenavState();
}

class _ProfilenavState extends State<Profilenav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.lock), SizedBox(width: 5), Text('jacob_w')],
          ),
          actions: [Icon(Icons.format_list_bulleted_sharp)],
          toolbarHeight: 70,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/img/Oval1.png'),
                ),
                SizedBox(width: 70),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '54',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('Post', style: TextStyle(fontSize: 13)),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '834',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('Followers', style: TextStyle(fontSize: 13)),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 40),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '162',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('Following', style: TextStyle(fontSize: 13)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 11),
                Text(
                  'jacob_w1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  'Digital goodies designer @pixsellz\nEverything is designed.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 39,
              width: 390,

              decoration: BoxDecoration(
                color: Color(0xff000000),
                border: Border.all(color: Colors.grey.shade700),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade600),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, size: 40),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('New', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade600),
                      ),
                      child: Image.asset('assets/img/Oval1.png'),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Sports',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.grey.shade600),
                      ),
                      child: Image.asset('assets/img/Oval1.png'),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Design',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
                
              ],
            ),
            SizedBox(height: 5,),
            SizedBox(
              height: 40,
              child: AppBar(
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.white,
                  labelColor: Colors.white,

                  tabs: [
                    Icon(Icons.grid_on_sharp, size: 30),
                    Icon(Icons.person_pin_rounded, size: 30),
                  ],
                ),

              
              ),
            
            ),
            Expanded(
              child: TabBarView(children: [
                Profilepost(),
                Profiletags(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
