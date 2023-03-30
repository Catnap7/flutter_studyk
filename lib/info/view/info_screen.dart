import 'package:flutter/material.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: const Placeholder(),
      title: '정보',
    );
  }
}
