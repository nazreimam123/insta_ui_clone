import 'package:flutter/material.dart';

class Followingfav extends StatelessWidget {
  const Followingfav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Row(
            
            children: [
              SizedBox(width: 10,),
              Text('New',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
              return Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.green
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/Oval1.png'),
                    radius: 20,
                  ),
                  title: Text('kiero_d started following \ncraig_love. 3h'),
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/img/Rectangle.png'),
                  ),
                )
              );
            },),
          )
        ],
      )
    );
  }
}