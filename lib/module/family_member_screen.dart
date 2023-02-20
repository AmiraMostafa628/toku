import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';

import '../shared/components/components.dart';

class FamilyMemberScreen extends StatelessWidget {
 List<Model> familyMembers = [
  Model(
    sound: 'father.wav',
    jpName: 'Chichioya',
    enName: 'father',
    image: 'assets/images/family_members/family_father.png',
  ),
  Model(
    sound: 'daughter.wav',
    jpName: 'Musume',
    enName: 'daughter',
    image: 'assets/images/family_members/family_daughter.png',
  ),
  Model(
    sound: 'grand father.wav',
    jpName: 'Ojīsan',
    enName: 'Grand Father',
    image: 'assets/images/family_members/family_grandfather.png',
  ),
  Model(
    sound: 'mother.wav',
    jpName: 'Hahaoya',
    enName: 'mother',
    image: 'assets/images/family_members/family_mother.png',
  ),
  Model(
    sound: 'grand mother.wav',
    jpName: 'Sobo',
    enName: 'grand mother',
    image: 'assets/images/family_members/family_grandmother.png',
  ),
  Model(
    sound: 'older bother.wav',
    jpName: 'Nīsan',
    enName: 'older brother',
    image: 'assets/images/family_members/family_older_brother.png',
  ),
  Model(
    sound: 'older sister.wav',
    jpName: 'Ane',
    enName: 'older sister',
    image: 'assets/images/family_members/family_older_sister.png',
  ),
  Model(
    sound: 'son.wav',
    jpName: 'Musuko',
    enName: 'son',
    image: 'assets/images/family_members/family_son.png',
  ),
  Model(
    sound: 'younger brohter.wav',
    jpName: 'otōto',
    enName: 'younger brother',
    image: 'assets/images/family_members/family_younger_brother.png',
  ),
  Model(
    sound: 'younger sister.wav',
    jpName: 'Imōto',
    enName: 'younger sister',
    image: 'assets/images/family_members/family_younger_sister.png',
  ),
];
@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff00776a),
      ),
      body:ListView.builder(
        itemBuilder: (context,index)=>ModelItem(
            model:familyMembers[index],
            color:Color(0xff00776a),
            path:  'assets/sounds/family_members/',),
        itemCount: familyMembers.length,
      )
  );
}}
