import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';

Widget CategoryItem(
    {
      required double height,
      required double width,
      required Color color,
      required String text,
      required Function() onTap,
      required String iconImage,
    }
    )
{
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0)
        ),
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: height,
        width: width,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),

            ),
            SizedBox(width: 20,),
            Image(
              width: 35.0,
                height: 40.0,
                image: AssetImage(iconImage),


            )
          ],
        ),
      ),
    ),
  );
}

void NavigateTo(context,Widget)=>Navigator.push(
    context,
    MaterialPageRoute(
      builder:(context) => Widget,
    )
);

void navigateAndFinish(context,Widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder:(context) => Widget,
    ),
        (route) => false);

Widget ModelItem({
 required Model model,
  required Color color,
  required String path,

}){

  return Container(
    height: 80,
    color: color,
    child: Row(
      children: [
        if(model.image!=null)
          Container(
            color: Color(0xffc2e6e4),
            child: Image(image: AssetImage(model.image!))),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.jpName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
              Text(
                model.enName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: (){
            try{
              AudioCache player = AudioCache(prefix:path );
              player.play(model.sound);
            }
            catch(ex)
            {
              print(ex);
            }
          },
          icon:Icon(Icons.play_arrow,color: Colors.white,),


        ),

      ],
    ),
  );
}