import 'package:flutter/material.dart';

class Profilepost extends StatelessWidget {
  const Profilepost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,

        ),
        children: [
          Image.asset('assets/img/Rectangle.png'),
          Image.asset('assets/img/Rectangle.png'),
          Image.asset('assets/img/Rectangle.png'),
          Image.asset('assets/img/Rectangle.png'),
         
        ],
      ),
    );
  }
}
