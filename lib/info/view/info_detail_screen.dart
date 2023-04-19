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

    // need to get the name with no brackets

    // final iname = state.asMap().map((key, value) => MapEntry(key, value.name)).;
    // Logger().i(iname);

    return DefaultLayout(
      child: _memberCard(state),
      title: '정보 상세',
    );
  }

  _memberCard(state) {

    return Column(
      children: [
          Hero(
            tag: ObjectKey(name),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: // Asset image
                  Image.asset(
                'asset/img/$name/${name}_1.png',
                // AssetImage('asset/img/$e/${image}_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        Text(state.map((e) => e.name).join(", ")),
      ],
    );
  }
}
