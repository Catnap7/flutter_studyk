import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_studyk/common/const/colors.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';
import 'package:flutter_studyk/info/provider/members_provider.dart';

class InfoDetailScreen extends ConsumerWidget {
  static String get routeName => 'infoDetail';
  final String name;

  const InfoDetailScreen({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(membersDetailProvider(name));

    return DefaultLayout(
      backgroundColor: SECONDARY_COLOR,
      title: '정보 상세',
      child: SingleChildScrollView(
        child: _memberCard(state),
      ),
    );
  }

  _memberCard(state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16.0),
        Hero(
          tag: name,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              'asset/img/$name/${name}_1.png',
              // AssetImage('asset/img/$e/${image}_1.png'),
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),

              // Render Profile Info
              Row(
                crossAxisAlignment:CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "NickName (활동명)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                      Text(
                        "Korean Name (한국 이름)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                      Text(
                        "English Name (영어 이름)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                      Text(
                        "Birth Day (생일)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                      Text(
                        "Blood Type (혈액형)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                      Text(
                        "mbti (성격 유형)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                      Text(
                        "position (역할)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                      Text(
                        "Height/Weight (키/몸무게)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 22.0),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        state.map((e) => e.name).join(", "),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        state.map((e) => e.koreanName).join(", "),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        state.map((e) => e.englishName).join(", "),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        state.map((e) => e.birth).join(", "),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 18.0),
                      Text(
                        state.map((e) => e.bloodType).join(", "),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 18.0),
                      Text(
                        state.map((e) => e.mbti).join(", "),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 18.0),
                      Text(
                        state.map((e) => e.position).join(", "),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "${state.map((e) => e.height).join(", ")}cm / ${state.map((e) => e.weight).join(", ")}kg",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          height: 200,
        ),
      ],
    );
  }
}
