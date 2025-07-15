import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  // const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      
        backgroundColor: Color(0xff121212),
        title: Text('sujal_dave'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios,size: 24,),),
        actions: [
          Icon(Icons.add,size:35,)
        ],
        toolbarHeight: 80,
        // backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0,right: 5),
            child: Container(
              height:45 ,
              width:double.infinity ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff262626)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
              return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/img/avatar.png'),
            
                
               ),
               title: Text('username_1'),
               subtitle: Text('Have a nice day, bro'),
               trailing: Icon(CupertinoIcons.camera),
              );
            }),
          )
        ],
      ),
      floatingActionButton: Container(
        width:double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xff121212)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_rounded,color: Colors.lightBlue,),
            SizedBox(width: 11,),
            Text('Camera',style: TextStyle(color: Colors.lightBlue),)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}