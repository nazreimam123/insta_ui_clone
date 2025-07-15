import 'package:flutter/material.dart';

class Postnav extends StatefulWidget {
  const Postnav({super.key});

  @override
  State<Postnav> createState() => _PostnavState();
}

class _PostnavState extends State<Postnav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
    );
  }
}