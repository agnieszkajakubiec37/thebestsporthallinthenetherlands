import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddOpinionPageContent extends StatefulWidget {
  const AddOpinionPageContent({
    super.key,
  });

  @override
  State<AddOpinionPageContent> createState() => _AddOpinionPageContentState();
}

class _AddOpinionPageContentState extends State<AddOpinionPageContent> {
  var sporthallName = '';
  var fieldName = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Podaj nazwę hali',
            ),
            onChanged: (newValue) {
              setState(() {
                sporthallName = newValue;
              });
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Podaj cechę boiska',
            ),
            onChanged: (newValue) {
              setState(() {
                fieldName = newValue;
              });
            },
          ),
          ElevatedButton(
            onPressed: () async {
              FirebaseFirestore.instance.collection('sports halls').add({
                'name': sporthallName,
                'field': fieldName,
                'rating': 9.0,
              });
            },
            child: const Text('Dodaj'),
          ),
        ],
      ),
    );
  }
}
