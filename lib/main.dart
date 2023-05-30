import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:fitnesh/widgets/main_screens_stack.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  debugPrint("test");
  FirebaseFirestore db = FirebaseFirestore.instance;
  final docRef = db.collection("test").doc("testDocument");
  docRef.get().then(
    (DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      debugPrint(data['testField']);
    },
    onError: (e) => debugPrint("Error getting document: $e"),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
    );
  }
}
