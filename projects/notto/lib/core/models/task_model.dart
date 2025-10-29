import 'package:flutter/material.dart';

class TaskModel {
  final String id;
  final String title;
  final IconData icon;
  final double progress; // 0.0 - 1.0
  final DateTime modified;
  final String? emoji; // optional emoji to show instead of an image

  TaskModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.progress,
    required this.modified,
    this.emoji,
  });
}
