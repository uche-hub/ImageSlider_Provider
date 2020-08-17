import 'package:flutter/material.dart';
import 'package:flutter_prodiver/model/imageModel.dart';
import 'package:flutter_prodiver/view/imageSlider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ImageModel(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ImageSlider(),
    );
  }
}