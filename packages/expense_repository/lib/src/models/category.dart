import 'package:expense_repository/src/entities/entities.dart';
import 'package:flutter/material.dart';

class Category {
  String categoryId;
  String name;
  double totalExpenses;
  String icon;
  int color;

  Category({
    required this.categoryId,
    required this.name,
    required this.totalExpenses,
    required this.icon,
    required this.color,
  });

  static final empty = Category(
    categoryId: '', 
    name: '', 
    totalExpenses: 0, 
    icon: '', 
    color: 0
  );

  CategoryEntity toEntity() {
    return CategoryEntity(
      categoryId: categoryId, 
      name: name, 
      totalExpenses: totalExpenses, 
      icon: icon, 
      color: color
    );
  }

  static Category fromEntity(CategoryEntity entity) {
    return Category(
      categoryId: entity.categoryId, 
      name: entity.name, 
      totalExpenses: entity.totalExpenses, 
      icon: entity.icon, 
      color: entity.color
    );
  }
}
