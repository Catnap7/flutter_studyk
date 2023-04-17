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
      child: _memberCard(state),
      title: '정보 상세',
    );
  }

  _memberCard(state) {
    final heroKey = state.map((e) => e.heroKey)?.toString();
    final image = state.map((e) => e.image)?.toString().toLowerCase();

    return Column(
      children: [
        if (heroKey != null)
          Hero(
            tag: ObjectKey(heroKey),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: // Asset image
                  Image.asset(
                'asset/img/$image/${image}_1.png',
                // AssetImage('asset/img/$e/${image}_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        if (heroKey == null)
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: // Asset image
                Image.asset(
              'asset/img/$image/${image}_1.png',
              // AssetImage('asset/img/$e/${image}_1.png'),
              fit: BoxFit.cover,
            ),
          ),
        Text(state.map((e) => e.koreanName).toString()),
      ],
    );
  }
}
