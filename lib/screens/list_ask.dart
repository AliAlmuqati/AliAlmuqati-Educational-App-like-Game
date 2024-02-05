import 'package:flutter/material.dart';
import 'package:rive_animation/screens/study.dart';

import 'Ask.dart';
int number_=0;
class List_Game1 extends StatelessWidget {
  const List_Game1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.black26 ,
        ),
        body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index],),
              );
            }
            )
        )

    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'المرحلة الاولى', icon: Icons.numbers_outlined),
  const Choice(title: 'المرحلة الثانية', icon: Icons.numbers_outlined),
  const Choice(title: 'المرحله الثالثة', icon: Icons.numbers_outlined),
  const Choice(title: 'المرحله الرابعة', icon: Icons.numbers_outlined),

];

class SelectCard extends StatelessWidget {
  const SelectCard({  required this.choice}) : super( );
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return


      GestureDetector(
        onTap: (){
          print(choice.title);
          if(choice.title=="المرحلة الاولى"){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ask()),
            );
          }else if(choice.title=="أسئلة"){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ask()),
            );
          }
        },
        child: Card(

            color: Colors.black26,
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: Icon(choice.icon, size:50.0, color: Colors.lightGreenAccent)),
                    Text(choice.title,style: TextStyle(fontSize: 18,color: Colors.white),)
                  ]
              ),
            )
        ),
      );
  }}