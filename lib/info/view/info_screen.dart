import 'package:flutter/material.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';

class InfoScreen extends StatelessWidget {
  static String get routeName => 'info';

  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '정보',
      child: const Placeholder(),
    );
  }
}
