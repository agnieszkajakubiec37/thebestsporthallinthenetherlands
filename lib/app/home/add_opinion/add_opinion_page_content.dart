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
  var rating = 5.0;

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
          Slider(
            onChanged: (newValue) {
              setState(() {
                rating = newValue;
              });
            },
            value: rating,
            min: 1.0,
            max: 6.0,
            divisions: 10,
            label: rating.toString(),
          ),
          ElevatedButton(
            onPressed: () async {
              FirebaseFirestore.instance.collection('sports halls').add({
                'name': sporthallName,
                'field': fieldName,
                'rating': rating,
              });
            },
            child: const Text('Dodaj'),
          ),
        ],
      ),
    );
  }
}
