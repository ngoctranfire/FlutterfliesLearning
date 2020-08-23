import 'package:flutter/material.dart';

class TasklyTextInput extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final Widget prefixIcon;
  final Widget suffixIcon;

  const TasklyTextInput({
    Key key,
    @required this.label,
    @required this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: const Color(0xFF8F92A1),
          ),
        ),
        TextField(
          keyboardType: keyboardType,
          obscureText: true,
          style: TextStyle(
            color: Colors.black,
          ),

          /// notice that we create an InputDecoration and decorate it
          /// so that it fits what we had int he design.
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            contentPadding: EdgeInsets.only(top: 20),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
