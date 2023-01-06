import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String title;
  final double value;
  final Color color;
  const ColorSlider(
      {super.key,
      required this.title,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20.0),
              ),
              Text(
                "$value",
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Slider(
            value: value,
            thumbColor: color,
            activeColor: color,
            onChanged: (newValue) {
              //setState(() => value = newValue);
            },
          ),
        ],
      ),
    );
  }
}
