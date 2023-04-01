import 'package:flutter/material.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';

class InfoDetailScreen extends StatelessWidget {
  static String get routeName => 'infoDetail';
  final String name;

  const InfoDetailScreen({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Center(
        child: Text(name),
      ),
      title: '정보 상세',
    );
  }
}
