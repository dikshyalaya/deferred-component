library feature1;

import 'package:flutter/material.dart';

class Feature1Screen extends StatelessWidget {
  const Feature1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature 1'),
      ),
      body: const Center(
        child: Text('This is Feature 1'),
      ),
    );
  }
}
