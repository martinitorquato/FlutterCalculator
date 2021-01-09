import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callBack;
  Keyboard(this.callBack);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(text: 'AC', color: Button.DARK, cb: callBack),
            Button(text: '%', color: Button.DARK, cb: callBack),
            Button.operation(text: '/', cb: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', cb: callBack),
            Button(text: '8', cb: callBack),
            Button(text: '9', cb: callBack),
            Button.operation(text: 'x', cb: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '4', cb: callBack),
            Button(text: '5', cb: callBack),
            Button(text: '6', cb: callBack),
            Button.operation(text: '-', cb: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '1', cb: callBack),
            Button(text: '2', cb: callBack),
            Button(text: '3', cb: callBack),
            Button.operation(text: '+', cb: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button.big(text: '0', cb: callBack),
            Button(text: '.', cb: callBack),
            Button.operation(text: '=', cb: callBack),
          ])
        ],
      ),
    );
  }
}
