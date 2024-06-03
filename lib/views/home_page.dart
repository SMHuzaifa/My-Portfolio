import 'package:flutter/material.dart';
import 'package:huzaifa_portfolio/viewmodels/section_viewmodel.dart';
import 'package:huzaifa_portfolio/views/sections/about_me.dart';
import 'package:huzaifa_portfolio/views/sections/education.dart';
import 'package:huzaifa_portfolio/views/sections/experience.dart';
import 'package:huzaifa_portfolio/views/sections/projects.dart';
import 'package:provider/provider.dart';

import '../widgets/menue.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final sectionViewModel = Provider.of<SectionViewModel>(context, listen: false);
    double offset = _scrollController.offset;
    double screenHeight = MediaQuery.of(context).size.height;

    String newSelectedSection;
    if (offset < screenHeight) {
      newSelectedSection = 'Home';
    } else if (offset >= screenHeight && offset < screenHeight * 2) {
      newSelectedSection = 'About';
    } else if (offset >= screenHeight * 2 && offset < screenHeight * 3) {
      newSelectedSection = 'Resume';
    } else {
      newSelectedSection = 'Portfolio';
    }

    if (newSelectedSection != sectionViewModel.selectedSection) {
      sectionViewModel.setSelectedSection(newSelectedSection);
    }
  }

  void _onSectionSelected(String section) {
    final sectionViewModel = Provider.of<SectionViewModel>(context, listen: false);
    sectionViewModel.setSelectedSection(section);

    double position = 0;
    switch (section) {
      case 'Home':
        position = 0;
        break;
      case 'About':
        position = MediaQuery.of(context).size.height;
        break;
      case 'Resume':
        position = MediaQuery.of(context).size.height * 2;
        break;
      case 'Portfolio':
        position = MediaQuery.of(context).size.height * 3;
        break;
    }
    _scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildSection(Widget sectionWidget) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: sectionWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    final sectionViewModel = Provider.of<SectionViewModel>(context);
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 250,
            color: Colors.black87,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/my_pic.jpeg'),
                  ),
                ),
                const Text(
                  'Syed Muhammad Huzaifa',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/github.png',
                      height: 27,
                      width: 27,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 7),
                    Image.asset(
                      'assets/linkedicon.png',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                MenuItem(
                  icon: Icons.home,
                  label: 'Home',
                  isHovered: sectionViewModel.isHomeHovered,
                  isSelected: sectionViewModel.selectedSection == 'Home',
                  onEnter: () => sectionViewModel.setHoveredState('Home', true),
                  onExit: () => sectionViewModel.setHoveredState('Home', false),
                  onTap: () => _onSectionSelected('Home'),
                ),
                const SizedBox(height: 25),
                MenuItem(
                  icon: Icons.person,
                  label: 'About',
                  isHovered: sectionViewModel.isAboutHovered,
                  isSelected: sectionViewModel.selectedSection == 'About',
                  onEnter: () => sectionViewModel.setHoveredState('About', true),
                  onExit: () => sectionViewModel.setHoveredState('About', false),
                  onTap: () => _onSectionSelected('About'),
                ),
                const SizedBox(height: 25),
                MenuItem(
                  icon: Icons.file_copy_outlined,
                  label: 'Resume',
                  isHovered: sectionViewModel.isResumeHovered,
                  isSelected: sectionViewModel.selectedSection == 'Resume',
                  onEnter: () => sectionViewModel.setHoveredState('Resume', true),
                  onExit: () => sectionViewModel.setHoveredState('Resume', false),
                  onTap: () => _onSectionSelected('Resume'),
                ),
                const SizedBox(height: 25),
                MenuItem(
                  icon: Icons.account_balance_wallet_outlined,
                  label: 'Portfolio',
                  isHovered: sectionViewModel.isPortfolioHovered,
                  isSelected: sectionViewModel.selectedSection == 'Portfolio',
                  onEnter: () => sectionViewModel.setHoveredState('Portfolio', true),
                  onExit: () => sectionViewModel.setHoveredState('Portfolio', false),
                  onTap: () => _onSectionSelected('Portfolio'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  _buildSection(Education()),
                  _buildSection(AboutMe()),
                  _buildSection(Experience()),
                  _buildSection(Projects()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
