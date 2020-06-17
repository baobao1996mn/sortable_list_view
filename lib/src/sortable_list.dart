import 'package:flutter/material.dart';


class SortableListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SortableListViewState();
}

class _SortableListViewState extends State<SortableListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child: Text("$index")),
          title: Text("Item $index"),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
