import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku/module/numbers_screen.dart';
import 'package:toku/module/phrases_screen.dart';
import 'package:toku/shared/components/components.dart';

import 'color_screen.dart';
import 'family_member_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc2e6e4),
      appBar: AppBar(
        title: Text('Toku App'),
        backgroundColor:  Color(0xff00776a),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryItem(
              height: 65,
              width: double.infinity,
              color:  Color(0xff00776a),
              text: 'Numbers',
              iconImage: 'assets/icons/numbers.png',
              onTap: (){
                NavigateTo(context, NumbersScreen());
              }
          ),
          CategoryItem(
              height: 65,
              width: double.infinity,
              color:  Color(0xff00776a),
              text: 'FamilyMembers',
              iconImage: 'assets/icons/family.png',
              onTap: (){
                NavigateTo(context, FamilyMemberScreen());
              }
          ),
          CategoryItem(
              height: 65,
              width: double.infinity,
              color:  Color(0xff00776a),
              text: 'Colors',
              iconImage: 'assets/icons/color.png',
              onTap: (){
                NavigateTo(context, ColorsScreen());
              }
          ),
          CategoryItem(
              height: 65,
              width: double.infinity,
              color: Color(0xff00776a),
              text: 'Phrases',
              iconImage: 'assets/icons/lets_go.png',
              onTap: (){
                NavigateTo(context, PhrasesScreen());
              }
          ),
        ],
      ),
    );
  }
}
