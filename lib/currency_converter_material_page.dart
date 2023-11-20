import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  
  @override
  State<CurrencyConverterMaterialPage> createState()
   => _CurrencyConverterMaterialPage();
}


class _CurrencyConverterMaterialPage 
  extends State<CurrencyConverterMaterialPage> {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();

  @override
   Widget build(BuildContext context) {
   print('rebuilt');
    final border = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 2.0,
      style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text('Currency Converter', style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
             result.toString(),
             style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
             ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text)*24000;
                  });
                }, 
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
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