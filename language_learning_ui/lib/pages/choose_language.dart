import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/models/language_model.dart';
import 'package:language_learning_ui/widgets/border_text_field.dart';
import 'package:language_learning_ui/widgets/language_selector.dart';
import 'package:language_learning_ui/widgets/primary_button.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

List<LanguageModel> languages = [];

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
