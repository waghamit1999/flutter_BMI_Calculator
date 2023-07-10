import 'package:flutter/material.dart';

enum BMIResult {
  underWeight(
      title: 'UNDERWEIGHT',
      feedback: 'You have a low body weight. Eat more and work less!',
      color: Colors.red),
  normal(
      title: 'NORMAL',
      feedback: 'You have a normal body weight. Good job!',
      color: Colors.green),

  overWeight(
      title: 'OVERWEIGHT', feedback: 'Need to do work-out!', color: Colors.red),

  obese(
      title: 'OBESE',
      feedback: 'Make and follow a proper diet and do some exercise!',
      color: Colors.red);

  final String title;
  final String feedback;
  final Color color;
  const BMIResult({
    required this.title,
    required this.feedback,
    required this.color,
  });
}
