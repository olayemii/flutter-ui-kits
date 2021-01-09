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
    isActive: false,
  ),
  LanguageModel(
    language: "English",
    imagePath: "assets/images/england.png",
    isActive: false,
  ),
  LanguageModel(
    language: "German",
    imagePath: "assets/images/germany.png",
    isActive: false,
  ),
  LanguageModel(
    language: "Korean",
    imagePath: "assets/images/korea.png",
    isActive: false,
  ),
  LanguageModel(
    language: "Polish",
    imagePath: "assets/images/poland.png",
    isActive: false,
  ),
  LanguageModel(
    language: "Italian",
    imagePath: "assets/images/italy.png",
    isActive: false,
  ),
];

class _ChooseLanguageState extends State<ChooseLanguage> {
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
                  return LanguageSelector(
                    isActive: language.isActive,
                    language: language.language,
                    imagePath: language.imagePath,
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
