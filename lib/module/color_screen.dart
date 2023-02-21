import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';

import '../shared/components/components.dart';

class ColorsScreen extends StatelessWidget {
  List<Model> colors =  [
    Model(
      sound: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Model(
      sound: 'brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Model(
      sound: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Model(
      sound: 'gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Model(
      sound: 'green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Model(
      sound: 'red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
    Model(
      sound: 'white.wav',
      jpName: 'Shiroi',
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
    ),
    Model(
      sound: 'yellow.wav',
      jpName: 'kiiro',
      enName: 'yellow',
      image: 'assets/images/colors/yellow.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00776a),
        appBar: AppBar(
          title: Text('Colors'),
          backgroundColor:  Color(0xff00776a),
        ),
        body:ListView.builder(
          itemBuilder: (context,index)=>ModelItem(
              model:colors[index],
              color: Color(0xff00776a),
              path:'assets/sounds/colors/'
          ),
          itemCount: colors.length,
        )
    );
  }}