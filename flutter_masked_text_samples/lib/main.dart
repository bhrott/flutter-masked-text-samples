import 'package:flutter/material.dart';
import 'package:flutter_masked_text_samples/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget _cpf() {
    String mask = '000.000.000-00';
    var controller = new MaskedTextController(mask: mask);

    return new TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
        labelText: 'CPF',
        hintText: mask
      ),
    );
  }

  Widget _onlyLetters() {
    String mask = 'AAAA';
    var controller = new MaskedTextController(mask: mask);

    return new TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        labelText: 'Only Letters',
        hintText: mask
      ),
    );
  }

  Widget _alphaNumeric() {
    String mask = 'AAA-000';
    var controller = new MaskedTextController(mask: mask);

    return new TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
          labelText: 'Alpha Numeric',
          hintText: mask
      ),
    );
  }

  Widget _anyChar() {
    String mask = '0A@*';
    var controller = new MaskedTextController(mask: mask);

    return new TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
          labelText: 'Any Char',
          hintText: mask
      ),
    );
  }

  Widget _moneyDefault() {
    var controller = new MoneyMaskedTextController();

    return new TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
          labelText: 'Money (Default)',
      ),
    );
  }

  Widget _moneyCustomized() {
    var controller = new MoneyMaskedTextController(
      initialValue: 1000.0,
      decimalSeparator: '.',
      thousandSeparator: ',',
      leftSymbol: 'US\$',
      precision: 3
    );

    return new TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
        labelText: 'Money (Customized)',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Masked Text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Masked Text'),
        ),
        body: new Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _cpf(),
                _onlyLetters(),
                _alphaNumeric(),
                _anyChar(),
                _moneyDefault(),
                _moneyCustomized()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
