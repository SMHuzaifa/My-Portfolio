import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Bachelor of Computer Science'),
            subtitle: Text('Kohat University | 2021'),
          ),
        ],
      ),
    );
  }
}
