import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';

import '../shared/components/components.dart';

class NumbersScreen extends StatelessWidget {

  List<Model> numbers = [
    Model(
        image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi',
        sound: 'number_one_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'Ni',
        sound: 'number_two_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'San',
        sound: 'number_three_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'Shi',
        sound: 'number_four_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'Go',
        sound: 'number_five_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku',
        sound: 'number_six_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebun',
        sound: 'number_seven_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi',
        sound: 'number_eight_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyu',
        sound: 'number_nine_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Ju',
        sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff00776a),
      ),
      body:ListView.builder(
          itemBuilder: (context,index)=>ModelItem(
            model:numbers[index],
            color:Color(0xff00776a) ,
            path:'assets/sounds/numbers/',

          ),
          itemCount: numbers.length,
      )
    );
  }
}
