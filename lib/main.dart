import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_project/homepage.dart';
import 'image_picker_provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ImagePickerProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Navigation Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}