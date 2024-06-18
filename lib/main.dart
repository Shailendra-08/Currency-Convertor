import 'package:flutter/material.dart';
import 'package:myapp/pages/currency_convertor_material_page.dart';

void main() {
  runApp(const MyApp());

}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CurrencyConvertor(),
      debugShowCheckedModeBanner: false,
    );
  }
}