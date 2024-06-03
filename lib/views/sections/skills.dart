import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final List<String> skills = [
    'Flutter', 'Dart', 'Firebase', 'Riverpod', 'REST API',
    'Google Ads', 'MVVM', 'SOLID Principle', 'OOP',
    'Clean Code', 'Git & Github', 'CI/CD', 'Postman'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
         const SizedBox(height: 10),
          Wrap(
            spacing: 10.0,
            children: skills.map((skill) => Chip(label: Text(skill))).toList(),
          ),
        ],
      ),
    );
  }
}
