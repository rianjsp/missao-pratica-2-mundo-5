import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text(
              'Oeschinen Lake Campground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            'Kandersteg, Switzerland',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
