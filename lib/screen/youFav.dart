import 'package:flutter/material.dart';

class Youfav extends StatelessWidget {
  const Youfav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.amber
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 14),
              child: Text('Follow Request',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 19),),
            ),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 16,),
              Text('New',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
              
                    
              return Container(
                height: 70,
                width: 400,
                // color: Colors.red,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(width: 10,),
                    // Text('  New',style: TextStyle(fontSize: 23,fontWeight:FontWeight.w500),),
                    // SizedBox(height: 10,),
                    ListTile(
                      leading: Image.asset('assets/img/Oval1.png',scale: 2,),
                      title: Text('karennne liked your photo. 1h'),
                      trailing: Image.asset('assets/img/Rectangle.png'),
                    ),
                  ],
                ),
              );
            }
            ),
          ),

        ],
      )
    );
  }
}