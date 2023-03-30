import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';
import 'package:flutter_studyk/info/model/members_model.dart';
import '../../info/provider/members_provider.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<MembersModel> state = ref.read(membersProvider);

    return DefaultLayout(
      child: Column(
        children: [
          Image.asset(
            'asset/img/group/bts_1.png',
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(
            "Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CarouselSlider(
            items: [
              // "RM", "Jungkook", 'Jin', 'SUGA', 'j-hope', 'Jimin', 'V'

            ].map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/img/$e/${e}_1.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Text(
                      e.toUpperCase(),
                      style: TextStyle(fontSize: 16.0),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 130,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
