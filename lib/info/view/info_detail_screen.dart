import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';
import 'package:flutter_studyk/info/provider/members_provider.dart';
import 'package:logger/logger.dart';

class InfoDetailScreen extends ConsumerWidget {
  static String get routeName => 'infoDetail';
  final String name;

  const InfoDetailScreen({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final state = ref.watch(membersDetailProvider(name));

    Logger().i(state.toList());

    return DefaultLayout(
      child: Center(
        child: Text(state.map((e) => e.koreanName).toString()),
      ),
      title: '정보 상세',
    );
  }
}
