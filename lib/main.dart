import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/pages/home_page.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  // Open a box

  // try {
  //   if (!Hive.isBoxOpen('myBox')) var box = await Hive.openBox<Type>('myBox');
  // } catch (error) {
  //   await Hive.deleteBoxFromDisk('myBox');
  //   var box = await Hive.openBox('myBox');
  // }

  // ignore: unused_local_variable
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
