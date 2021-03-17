import 'package:navigasi/models/item.dart';
import 'package:navigasi/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                        onTap: () {
                          //Navigator.pushNamed(context, '/item');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemPage(tempItem: item)),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.all(8),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(child: Text(item.name)),
                                  Expanded(
                                      child: Text(
                                    item.price.toString(),
                                    textAlign: TextAlign.end,
                                  ))
                                ],
                              ),
                            )));
                  }))),
    );
  }
}
