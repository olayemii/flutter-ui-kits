import 'package:flutter/material.dart';

class TopicModel {
  final String topic;
  final String points;
  final String time;
  final String image;
  final Color color;
  final List<BoxShadow> boxShadow;
  TopicModel({
    this.time,
    this.topic,
    this.points,
    this.image,
    this.color,
    this.boxShadow,
  });
}
