import 'package:flutter/material.dart';
import 'item_details_page.dart';
import 'item_model.dart';

class ItemsListPage extends StatefulWidget {
  ItemsListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ItemsListPageState createState() => _ItemsListPageState();
}

class _ItemsListPageState extends State<ItemsListPage> {

// // ページに表示される[ItemModel]のハードコードされたリスト
  final List<ItemModel> _items = [
    ItemModel(0, Icons.account_balance, 'Balance', 'Some info'),
    ItemModel(1, Icons.account_balance_wallet, 'Balance wallet', 'Some info'),
    ItemModel(2, Icons.alarm, 'Alarm', 'Some info'),
    ItemModel(3, Icons.my_location, 'My location', 'Some info'),
    ItemModel(4, Icons.laptop, 'Laptop', 'Some info'),
    ItemModel(5, Icons.backup, 'Backup', 'Some info'),
    ItemModel(6, Icons.settings, 'Settings', 'Some info'),
    ItemModel(7, Icons.call, 'Call', 'Some info'),
    ItemModel(8, Icons.restore, 'Restore', 'Some info'),
    ItemModel(9, Icons.camera_alt, 'Camera', 'Some info'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder( // スクロール可能なリストに[ItemWidget]を作成するウィジェット
          itemCount: _items.length, // 作成するウィジェットの数
          itemBuilder: (context, itemIndex) => // インデックス付きのすべてのアイテムのビルダー関数
          ItemWidget(_items[itemIndex], () {
            _onItemTap(context, itemIndex);
          }),
        ));
  }

  //
  _onItemTap(BuildContext context, int itemIndex) {
    // 次の画面にデータを転送する
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ItemDetailsPage(_items[itemIndex])));
  }
}


// StatelessWidget with UI for our ItemModel-s in ListView.
class ItemWidget extends StatelessWidget {
  const ItemWidget(this.model, this.onItemTap, {Key key}) : super(key: key);

  final ItemModel model;
  final Function onItemTap;

  @override
  Widget build(BuildContext context) {
    return InkWell( // Enables taps for child and add ripple effect when child widget is long pressed.
      onTap: onItemTap,
      child: ListTile( // Useful standard widget for displaying something in ListView.
        leading: Icon(model.icon),
        title: Text(model.title),
      ),
    );
  }
}