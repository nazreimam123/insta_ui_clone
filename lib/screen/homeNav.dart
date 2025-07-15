import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:insta_ui_clone/screen/chats.dart';

class Homenav extends StatefulWidget {
  // const Homenav({super.key});

  @override
  State<Homenav> createState() => _HomenavState();
}

class _HomenavState extends State<Homenav> {
  var arrImg = [
    {
      'name': 'John',
      'img':
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg',
    },
    {
      'name': 'ALice',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s',
    },
    {
      'name': 'Bob',
      'img':
          'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8=',
    },

    {
      'name': 'Chef',
      'img':
          'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
    },
    {
      'name': 'David',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZBTKg-oh9Zz_x92BrzJbD9rozepPYVjGlpQ&s',
    },
    {
      'name': 'Elon',
      'img':
          'https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg',
    },
    {
      'name': 'John',
      'img':
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg',
    },
    {
      'name': 'ALice',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s',
    },
    {
      'name': 'Bob',
      'img':
          'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8=',
    },

    {
      'name': 'Chef',
      'img':
          'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
    },
    {
      'name': 'David',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZBTKg-oh9Zz_x92BrzJbD9rozepPYVjGlpQ&s',
    },
    {
      'name': 'Elon',
      'img':
          'https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Color(0xfff121212),
        leading: Icon(Icons.camera_alt_outlined),
        title: Image.asset('assets/img/instaTXT.png', scale: 1.25),

        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.live_tv_sharp)),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Chats()));
              },
              icon: Image.asset('assets/img/Messanger.png'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: arrImg.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 33,
                          backgroundImage: AssetImage('assets/img/Oval1.png')
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        arrImg[index]['name'].toString(),
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              // radius: 0,
              backgroundImage: AssetImage('assets/img/Oval.png'),
            ),
            title: Text(
              'joshua_ls',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            subtitle: Text(
              'Tokyo, Japan',
              style: TextStyle(fontSize: 11, color: Colors.white),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            // height: 400,
            width: double.infinity,
            child: Image.asset('assets/img/Rectangle.png', fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.favorite_border, size: 40),
                SizedBox(width: 10),
                Icon(CupertinoIcons.chat_bubble, size: 40),
                SizedBox(width: 10),
                Icon(Icons.arrow_outward, size: 40),

                Spacer(),
                Icon(Icons.bookmark_outline_outlined, size: 40),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/img/avatar.png'),
                ),
              ),
              SizedBox(width: 11),
              RichText(
                text: TextSpan(
                  text: 'Liked by',
                  children: [
                    TextSpan(
                      text: '  sujal_dave',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and'),
                    TextSpan(
                      text: '  44,686 others',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 5, bottom: 10),
            child: RichText(
              text: TextSpan(
                style: TextStyle(),
                children: [
                  TextSpan(
                    text: 'sujal_dave',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' The game in Japan was amazing and I want to share some photos',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
