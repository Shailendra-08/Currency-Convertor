import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// 1] we need to store the coverted into value
// 2] create a function we need to multiply with the 81
// 3] store the value of the variable that we created
// 4] display the  variable

class CurrencyConvertor extends StatefulWidget {
  const CurrencyConvertor({super.key});

  @override
  State<CurrencyConvertor> createState() =>  _CurrencyConvertorState();
}

class _CurrencyConvertorState extends State<CurrencyConvertor> {
  double result =0;
  final TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {


    final commborder = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Currency Convertor',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: commborder,
                  enabledBorder: commborder,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });


                },
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(10),
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



