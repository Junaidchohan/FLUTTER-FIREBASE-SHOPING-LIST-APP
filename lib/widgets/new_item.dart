import 'package:flutter/material.dart';

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
          )
        ],
      )),
    );
  }
}
