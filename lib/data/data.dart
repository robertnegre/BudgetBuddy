import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

List<Map<String, dynamic>> transactionsData = [
  {
    'icon': const Icon(SFSymbols.cart, color: Colors.white),
    'color': Colors.orange,
    'name': 'Groceries',
    'totalAmount': '- 45,00 RON',
    'date': 'Today',
  },
  {
    'icon': const Icon(SFSymbols.creditcard, color: Colors.white),
    'color': Colors.purple,
    'name': 'Shopping',
    'totalAmount': '- 230,00 RON',
    'date': 'Today',
  },
  {
    'icon': const Icon(SFSymbols.heart_circle, color: Colors.white),
    'color': Colors.green,
    'name': 'Health',
    'totalAmount': '- 79,00 RON',
    'date': 'Yesterday',
  },
  {
    'icon': const Icon(SFSymbols.airplane, color: Colors.white),
    'color': Colors.blue,
    'name': 'Travel',
    'totalAmount': '- 350,00 RON',
    'date': '31/08/2024',
  },
  {
    'icon': const Icon(SFSymbols.house_fill, color: Colors.white),
    'color': Colors.teal,
    'name': 'Rent',
    'totalAmount': '- 1500,00 RON',
    'date': '01/10/2024',
  },
  {
    'icon': const Icon(SFSymbols.flame_fill, color: Colors.white),
    'color': Colors.red,
    'name': 'Utilities',
    'totalAmount': '- 200,00 RON',
    'date': '05/10/2024',
  },
  {
    'icon': const Icon(SFSymbols.gift_fill, color: Colors.white),
    'color': Colors.pink,
    'name': 'Gifts',
    'totalAmount': '- 120,00 RON',
    'date': '06/10/2024',
  }
];