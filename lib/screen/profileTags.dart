import 'package:flutter/material.dart';

class Profiletags extends StatelessWidget {
  const Profiletags({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,

        ),
        itemBuilder: (context, index) => Image.asset('assets/img/Rectangle.png'),
        itemCount: 7,
      ),
    );
  }
}
