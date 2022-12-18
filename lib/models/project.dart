import 'package:flutter/cupertino.dart';

class ProjectField {
  static const createdTime = 'createdTime';
}

class Project {
  DateTime createdTime;
  String title;
  String id;
  String description;
  bool isDone;

  Project({
    required this.createdTime,
    required this.title,
    this.description = '',
    required this.id ,
    this.isDone = false,
  });
}