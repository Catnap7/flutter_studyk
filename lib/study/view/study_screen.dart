import 'package:flutter/material.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';
import 'package:flutter_studyk/info/view/info_detail_screen.dart';
import 'package:flutter_studyk/study/view/study_detail_screen.dart';
import 'package:go_router/go_router.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultLayout(
      title: '공부 (Study)',
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              crossAxisCount: 2,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              // Rounded card with image
              return Column(
                children: [
                  Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {
                        context.goNamed(StudyDetailScreen.routeName, params: {
                          'title': _getStudyCardTitle(index),
                        });
                      },
                      child: Image.asset(
                        'asset/img/study/card_img/card_$index.png',
                        height: 126,
                        opacity: const AlwaysStoppedAnimation(0.9),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    _getStudyCardTitle(index),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              );
            },
          ),
        ],
      )),
    );
  }

  _getStudyCardTitle(int index) {
    switch (index) {
      case 0:
        return '드라마 (Drama)';
      case 1:
        return '영화 (Movie)';
      case 2:
        return '음식 (Food)';
      case 3:
        return '한복 (Hanbok)';
      case 4:
        return '한글 (Hangul)';
      case 5:
        return '음악 (Music)';
      case 6:
        return '상징물 (LandMark)';
      case 7:
        return '웹툰 (Webtoon)';
    }
  }
}
