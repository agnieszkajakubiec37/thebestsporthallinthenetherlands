import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thebestsporthallinthenetherlands/firebase_options.dart';
import 'package:thebestsporthallinthenetherlands/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
