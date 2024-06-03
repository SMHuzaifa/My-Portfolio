import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:huzaifa_portfolio/viewmodels/section_viewmodel.dart';
import 'package:huzaifa_portfolio/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SectionViewModel(),
      child: MaterialApp(
        title: 'Huzaifa Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
