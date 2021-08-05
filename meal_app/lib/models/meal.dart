import 'package:flutter/material.dart';

enum Complexity{
  Simple, Challenging,Hard
}

enum Affordability{
  Affordable,Pricey,Luxurious
}
class Meal{
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> steps;
  final List<String> ingredients;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final Complexity complexity;
  final Affordability affordability;
  Meal({required this.id, required this.categories, required this.title, required this.imageUrl, required this.duration, required this.steps,required this.affordability, required this.complexity, required this.ingredients, required this.isGlutenFree, required this.isLactoseFree, required this.isVegan, required this.isVegetarian });
}