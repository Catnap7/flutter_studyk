import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_studyk/info/model/members_model.dart';
import 'package:logger/logger.dart';

final membersProvider =
    StateNotifierProvider<MembersNotifier, List<MembersModel>>(
        (ref) => MembersNotifier());

// 멤버 상세 프로필 Provider
final membersDetailProvider =
    Provider.family<List<MembersModel>, String>((ref, name) {
  final state = ref.watch(membersProvider);

  return state.where((element) => element.name.toLowerCase() == name).toList();
});

class MembersNotifier extends StateNotifier<List<MembersModel>> {
  MembersNotifier()
      : super([
          const MembersModel(
            name: 'RM',
            koreanName: '김남준',
            englishName: 'Kim Namjoon',
            birth: '1994.9.12',
            height: '181',
            weight: '72',
            bloodType: 'A',
            position: 'Leader, Main Rapper',
            mbti: 'ENFP',
            heroKey: 'rm',
          ),
          const MembersModel(
            name: 'Jin',
            koreanName: '김석진',
            englishName: 'Kim Seokjin',
            birth: '1992.12.4',
            height: '179',
            weight: '58',
            bloodType: 'O',
            position: 'Main Vocalist',
            mbti: 'INTP',
            heroKey: 'jin',
          ),
          const MembersModel(
            name: 'SUGA',
            koreanName: '민윤기',
            englishName: 'Min Yoongi',
            birth: '1993.3.9',
            height: '175',
            weight: '61',
            bloodType: 'O',
            position: 'Lead Rapper',
            mbti: 'ISTP',
            heroKey: 'suga',
          ),
          const MembersModel(
            name: 'j-hope',
            koreanName: '정호석',
            englishName: 'Jung Hoseok',
            birth: '1994.2.18',
            height: '177',
            weight: '60',
            bloodType: 'A',
            position: 'Main Dancer, Sub Rapper',
            mbti: 'INFJ',
          ),
          const MembersModel(
            name: 'jimin',
            koreanName: '박지민',
            englishName: 'Park Jimin',
            birth: '1995.10.13',
            height: '174',
            weight: '58',
            bloodType: 'A',
            position: 'Main Dancer, Vocalist',
            mbti: 'ESTJ',
          ),
          const MembersModel(
            name: 'V',
            koreanName: '김태형',
            englishName: 'Kim Taehyung',
            birth: '1995.12.30',
            height: '179',
            weight: '64',
            bloodType: 'AB',
            position: 'Sub Vocalist, Dancer',
            mbti: 'INFP',
          ),
          const MembersModel(
            name: 'Jungkook',
            koreanName: '전정국',
            englishName: 'Jeon Jeongguk',
            birth: '1997.9.1',
            height: '179',
            weight: '71',
            bloodType: 'A',
            position: 'Main Vocalist, Lead Dancer',
            mbti: 'ISFP',
          ),
        ]);
}
