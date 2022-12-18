import 'dart:io';

import 'package:flutter/cupertino.dart';

class ServiceField {
  static const createdTime = 'createdTime';
}

class Service {
  DateTime createdTime;
  String title;
  String id;
  String description;
  String imageUrl;


  Service({
    required this.createdTime,
    required this.title,
    this.description = '',
    required this.id,
    this.imageUrl = 'assets/images/logo1.png'


  });

}