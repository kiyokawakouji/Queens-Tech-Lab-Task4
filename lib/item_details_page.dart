import 'package:flutter/material.dart';

import 'item_model.dart';

/// [ItemModel]の詳細情報を表示するウィジェット
class ItemDetailsPage extends StatefulWidget {
  final ItemModel model;

  const ItemDetailsPage(this.model, {Key key}) : super(key: key);

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Icon(
              widget.model.icon,
              size: 100,
            ),
            const SizedBox(height: 16),
            Text(
              'Item description: ${widget.model.description}',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}