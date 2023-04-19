// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MembersModel _$MembersModelFromJson(Map<String, dynamic> json) => MembersModel(
      name: json['name'] as String,
      koreanName: json['koreanName'] as String,
      englishName: json['englishName'] as String,
      birth: json['birth'] as String,
      height: json['height'] as String,
      weight: json['weight'] as String,
      bloodType: json['bloodType'] as String,
      position: json['position'] as String,
      mbti: json['mbti'] as String,
      heroKey: json['heroKey'] as String?,
    );

Map<String, dynamic> _$MembersModelToJson(MembersModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'koreanName': instance.koreanName,
      'englishName': instance.englishName,
      'birth': instance.birth,
      'height': instance.height,
      'weight': instance.weight,
      'bloodType': instance.bloodType,
      'position': instance.position,
      'mbti': instance.mbti,
      'heroKey': instance.heroKey,
    };
