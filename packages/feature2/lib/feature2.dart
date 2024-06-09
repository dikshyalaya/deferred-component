library feature2;

import 'package:flutter/material.dart';

class Feature2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature 2'),
      ),
      body: Center(
        child: Text('This is Feature 2'),
      ),
    );
  }
}
