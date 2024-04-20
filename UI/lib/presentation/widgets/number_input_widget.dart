import 'package:flutter/material.dart';

class NumberInputRow extends StatelessWidget {
  final String labelText;
  final String initialValue;

  const NumberInputRow({
    required this.labelText,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14,
              ),
              controller: TextEditingController(text: initialValue),
            ),
          ),
        ),
      ],
    );
  }
}
