import 'package:flutter/material.dart';
import 'color_slider_component.dart';

class ColorSliderPage extends StatefulWidget {
  const ColorSliderPage({super.key});

  @override
  State<ColorSliderPage> createState() => _ColorSliderPageState();
}

class _ColorSliderPageState extends State<ColorSliderPage> {
  double redValue = 0.5;
  double greenValue = 0.6;
  double blueValue = 0.7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Color Sliders"),
        ),
        body: Column(children: [
          ColorSlider(
            title: "Red",
            value: redValue,
            color: Colors.red,
            onChange: (newValue) {
              setState(() {
                redValue = newValue;
              });
            },
          ),
          ColorSlider(
            title: "Green",
            value: greenValue,
            color: Colors.green,
            onChange: (newValue) {
              setState(() {
                greenValue = newValue;
              });
            },
          ),
          ColorSlider(
            title: "Blue",
            value: blueValue,
            color: Colors.blue,
            onChange: (newValue) {
              setState(() {
                blueValue = newValue;
              });
            },
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              color: Color.fromRGBO((redValue * 255).round(),
                  (greenValue * 255).round(), (blueValue * 255).round(), 1.0),
            ),
          ),
        ]));
  }
}
