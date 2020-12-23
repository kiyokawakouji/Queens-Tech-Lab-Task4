import 'package:flutter/material.dart';

class ItemModel {
  // class constructor
  ItemModel(this.id, this.icon, this.title, this.description);

  // class fields
  final int id;
  final IconData icon;
  final String title;
  final String description;
}