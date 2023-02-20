import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';
import 'package:toku/shared/components/components.dart';

class PhrasesScreen extends StatelessWidget {

   List<Model> phrases =  [
    Model(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide ku',
      enName: 'Dont forget to subscribe',
    ),
    Model(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukid',
      enName: 'I love programming',
    ),
    Model(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      enName: 'Programming is easy',
    ),
    Model(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'Where are you going ?',
    ),
    Model(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'What is your name ?',
    ),
    Model(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),
    Model(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are you feeling?',
    ),
    Model(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming?',
    ),
    Model(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'Yes I am coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff00776a),
        appBar: AppBar(
          title: Text('Phrases'),
          backgroundColor: Color(0xff00776a),
        ),
        body:ListView.builder(
          itemBuilder: (context,index)=>ModelItem(
              model:phrases[index],
              color:Color(0xff00776a),
              path:  'assets/sounds/phrases/',
          ),
          itemCount: phrases.length,
        )
    );
  }
}
