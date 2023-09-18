import 'package:flutter/material.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';
import 'package:flutter_studyk/study/data/data.dart';

class StudyDetailScreen extends StatelessWidget {
  static String get routeName => 'studyDetail';
  final String title;

  const StudyDetailScreen({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: title,
      child: Column(
        children: [
          Text(.kor_title.toString()),
          const SizedBox(
            height: 16.0,
          ),
          
        ],
      ),
    );
  }
}
