import 'package:flutter/material.dart';

class SectionViewModel extends ChangeNotifier {
  String _selectedSection = 'Home';
  bool _isHomeHovered = false;
  bool _isAboutHovered = false;
  bool _isResumeHovered = false;
  bool _isPortfolioHovered = false;

  String get selectedSection => _selectedSection;
  bool get isHomeHovered => _isHomeHovered;
  bool get isAboutHovered => _isAboutHovered;
  bool get isResumeHovered => _isResumeHovered;
  bool get isPortfolioHovered => _isPortfolioHovered;

  void setSelectedSection(String section) {
    _selectedSection = section;
    notifyListeners();
  }

  void setHoveredState(String section, bool isHovered) {
    switch (section) {
      case 'Home':
        _isHomeHovered = isHovered;
        break;
      case 'About':
        _isAboutHovered = isHovered;
        break;
      case 'Resume':
        _isResumeHovered = isHovered;
        break;
      case 'Portfolio':
        _isPortfolioHovered = isHovered;
        break;
    }
    notifyListeners();
  }
}
