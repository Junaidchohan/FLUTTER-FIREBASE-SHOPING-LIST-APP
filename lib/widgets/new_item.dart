import 'package:flutter/material.dart';
import 'package:shoping_list_app/data/categories.dart';
import 'package:shoping_list_app/models/category.dart';

class NewItemScreen extends StatefulWidget {
  const NewItemScreen({super.key});

  @override
  State<NewItemScreen> createState() => _NewItemScreenState();
}

class _NewItemScreenState extends State<NewItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new item"),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
            maxLength: 50,
            decoration: InputDecoration(
              label: Text("Name"),
            ),
            validator: (value) {
              return 'Demo....';
            },
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Quantity")),
                  initialValue: "1",
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: DropdownButtonFormField(items: [
                  for (final Category in categories.entries)
                    DropdownMenuItem(
                        value: Category.value,
                        child: Row(
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              color: Category.value.color,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(Category.value.title)
                          ],
                        ))
                ], onChanged: (value) {}),
              )
            ],
          )
        ],
      )),
    );
  }
}
