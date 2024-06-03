import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Agahi Baldiyat',
      'description': 'For Govt of KPK (I did contribution in this app).',
    },
    {
      'title': 'TAQ Academy',
      'description': 'A comprehensive Islamic app featured on the Google Play Store, designed to support the spiritual practices of Muslims globally.',
      'link': 'https://play.google.com/store/apps/details?id=com.taq.tasleem_al_quran&hl=en&gl=US',
    },
    {
      'title': 'BedavaneVar',
      'description': 'A dynamic mobile application on the Google Play Store that offers users a unique opportunity to win products through lucky draws.',
      'link': 'https://github.com/SMHuzaifa/raffle_app',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 8),
          Column(
            children: projects.map((project) {
              return ListTile(
                leading: Icon(Icons.code),
                title: Text(project['title']!),
                subtitle: Text(project['description']!),
                onTap: () {
                  if (project['link'] != null) {
                  //  _launchURL(project['link']!);
                  }
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  // void _launchURL(String url) async {
  //   if (await l(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
