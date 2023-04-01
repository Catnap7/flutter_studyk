import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'members_model.g.dart';

@JsonSerializable()
class MembersModel {
  // 활동명
  final String name;
  // 한글이름
  final String koreanName;
  // 영어이름
  final String englishName;
  final String birth;
  final String height;
  final String weight;
  final String bloodType;
  final String position;
  final String mbti;

  const MembersModel({
    required this.name,
    required this.koreanName,
    required this.englishName,
    required this.birth,
    required this.height,
    required this.weight,
    required this.bloodType,
    required this.position,
    required this.mbti,
  });

  factory MembersModel.fromJson(Map<String, dynamic> json)
  => _$MembersModelFromJson(json);

}