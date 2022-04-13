import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  var _items = [];

  void _loadItems() {
    for(int i=0; i<=10; i++)
      {
        Map<String, dynamic> item = Map();
        item["Title"] = "Title ${i} lorem ipsum dolor sit amet.";
        item["Description"] = "Description ${i} ipsum dolor sit amet.";
        _items.add(item);
      }
  }

  @override
  Widget build(BuildContext context) {

    _loadItems();

    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: 5,
            itemBuilder: (context, index) {
              print("Item ${_items[index].toString()}");

              return ListTile(
                onTap: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text(_items[index]["Title"]),
                      titlePadding: EdgeInsets.all(50),
                      titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.red
                      ),
                      content: Text(_items[index]["Description"]),
                      contentPadding: EdgeInsets.all(80),
                      actions: [
                        ElevatedButton(onPressed: () {
                          print("Selected YES");
                          Navigator.pop(context);
                        }, child: Text("Yes")),
                        ElevatedButton(onPressed: () {
                          print("Selected NO");
                          Navigator.pop(context);
                        }, child: Text("No"))
                      ],
                    );
                  });
                },
                onLongPress: () {},
                title: Text("Item ${_items[index].toString()}"),
                subtitle: Text("Description: ${_items[index].toString()}"),
              );
            }
        ),
      ),
    );
  }
}
