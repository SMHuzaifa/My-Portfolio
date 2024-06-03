import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Flutter Developer'),
            subtitle: Text('IT Artificer | 03/2023 - 10/2024'),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Flutter Intern (PSEB)'),
            subtitle: Text('IT Artificer | 10/2022 - 03/2023'),
          ),
        ],
      ),
    );
  }
}
