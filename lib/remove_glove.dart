import 'package:flutter/material.dart';

class RemoveGlovePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remove Glove'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Remove Glove Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
