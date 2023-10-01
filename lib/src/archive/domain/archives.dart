


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'archives.g.dart';
part 'archives.freezed.dart';


@freezed
abstract class Archives with _$Archives{
const factory Archives({
  String? id,
  required String refrenceId,
  required String userOwner,
  required DateTime createdAt,
  required ArchivesType type

  })=_Archives;

  factory Archives.fromJson(Map<String,dynamic> json)=>_$ArchivesFromJson(json);

}

enum ArchivesType{post,user}