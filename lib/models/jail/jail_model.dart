// To parse this JSON data, do
//
//     final jailModel = jailModelFromJson(jsonString);

import 'dart:convert';

JailModel jailModelFromJson(String str) => JailModel.fromJson(json.decode(str));

String jailModelToJson(JailModel data) => json.encode(data.toJson());

class JailModel {
  JailModel({
    this.levelMin,
    this.levelMax,
    this.timeMin,
    this.timeMax,
    this.scoreMax,
    this.bailTicked,
    this.bustTicked,
  });
  
  int levelMin;
  int levelMax;
  int timeMin;
  int timeMax;
  int scoreMax;
  bool bailTicked;
  bool bustTicked;

  factory JailModel.fromJson(Map<String, dynamic> json) => JailModel(
        levelMin: json["levelMin"] ?? 1,
        levelMax: json["levelMax"] ?? 100,
        timeMin: json["timeMin"] ?? 0,
        timeMax: json["timeMax"] ?? 100,
        scoreMax: json["scoreMax"] ?? 250000,
        bailTicked: json["bailTicked"] ?? false,
        bustTicked: json["bustTicked"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "levelMin": levelMin == null ? null : levelMin,
        "levelMax": levelMax == null ? null : levelMax,
        "timeMin": timeMin == null ? null : timeMin,
        "timeMax": timeMax == null ? null : timeMax,
        "scoreMax": scoreMax == null ? null : scoreMax,
        "bailTicked": bailTicked == null ? null : bailTicked,
        "bustTicked": bustTicked == null ? null : bustTicked,
      };
}
