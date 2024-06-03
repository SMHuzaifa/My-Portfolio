import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 8),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('+92 3347938417'),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('smhuzaifa7@gmail.com'),
          ),
          const ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Kohat, Pakistan'),
          ),
        ],
      ),
    );
  }
}
