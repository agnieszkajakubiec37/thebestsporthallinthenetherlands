import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
<<<<<<< HEAD
import 'package:thebestsporthallinthenetherlands/firebase_options.dart';
=======
import 'firebase_options.dart';
>>>>>>> d7b1772dd1bfa22c533e46cf07c330e31d0ee6c8
import 'package:thebestsporthallinthenetherlands/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
