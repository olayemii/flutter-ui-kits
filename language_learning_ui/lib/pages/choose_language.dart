import 'package:flutter/material.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/models/language_model.dart';
import 'package:language_learning_ui/widgets/language_selector.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

List<LanguageModel> languages = [
  LanguageModel(
    language: "Spanish",
    imagePath: "assets/images/spain.png",
  ),
  LanguageModel(
    language: "English",
    imagePath: "assets/images/england.png",
  ),
  LanguageModel(
    language: "German",
    imagePath: "assets/images/germany.png",
  ),
  LanguageModel(
    language: "Korean",
    imagePath: "assets/images/korea.png",
  ),
  LanguageModel(
    language: "Polish",
    imagePath: "assets/images/poland.png",
  ),
  LanguageModel(
    language: "Italian",
    imagePath: "assets/images/italy.png",
  ),
];

class _ChooseLanguageState extends State<ChooseLanguage> {
  int _activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Choose the Language",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: Constants.primaryTextColor,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                ...languages.map((language) {
                  int _currentIndex = languages.indexOf(language);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _activeIndex = _currentIndex;
                      });
                    },
                    child: LanguageSelector(
                      isActive: _activeIndex == _currentIndex,
                      language: language.language,
                      imagePath: language.imagePath,
                    ),
                  );
                }).toList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
