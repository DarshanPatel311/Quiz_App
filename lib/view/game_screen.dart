import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/quiz_controler.dart';
import '../utils/list.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    final QuizController quizController=Get.put(QuizController());

    return Scaffold(

      appBar: AppBar(

        title: Text("Game"),
        actions: [
          Text('${quizController.life}'+" ",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
          Icon(Icons.favorite_outlined,color: Colors.redAccent,),
          SizedBox(width: 20,),
        ],
      ),
      body: Column(
        children: [

          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(quiz[quizController.index]['question'],style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: () {
              setState(() {
                quizController.chekA();
                if(quizController.life>0){
                  quizController.life-=1;

                }
                else{
                  quizController.life=3;
                  showDialog(context: context, builder: (context) => AlertDialog(
                   title: Text("You lost",style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.bold
                   ),),
                    actions: [
                      TextButton(onPressed: () {
                        setState(() {
                          Get.toNamed('/home');
                          quizController.index=0;
                        });
                      }, child: Text("Back to home")),
                      TextButton(onPressed: () {
                        setState(() {
                          Get.back();
                          quizController.index=0;
                        });
                      }, child: Text("Retry")),
                    ],
                  ));

                }
              });
            },
            child: Container(
              height: 50,
              width: 300,
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black12),
               color: (quizController.right)?Colors.green:Colors.white,
               borderRadius: BorderRadius.circular(20),
             ),
              child: Center(
                child: Text('${quiz[quizController.index]['options'][0]}',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
             setState(() {
               quizController.chekB();
               if(quizController.life>0){
                 quizController.life-=1;

               }
               else{
                 quizController.life=3;
                 showDialog(context: context, builder: (context) => AlertDialog(
                   actions: [
                     TextButton(onPressed: () {
                      setState(() {
                        Get.toNamed('/home');
                        quizController.index=0;
                      });
                     }, child: Text("Back to home")),
                     TextButton(onPressed: () {
                       setState(() {
                         Get.back();
                         quizController.index=0;
                       });
                     }, child: Text("Retry")),
                   ],
                 ));

               }
             });
            },
            child: Container(
              height: 50,
              width: 300,
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black12),
               color: Colors.white,
               borderRadius: BorderRadius.circular(20),
             ),
              child: Center(
                child: Text('${quiz[quizController.index]['options'][1]}',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              setState(() {
                quizController.chekC();
                if(quizController.life>0){
                  quizController.life-=1;

                }
                else{
                  quizController.life=3;
                  showDialog(context: context, builder: (context) => AlertDialog(
                    actions: [
                      TextButton(onPressed: () {
                        setState(() {
                          Get.toNamed('/home');
                          quizController.index=0;
                        });
                      }, child: Text("Back to home")),
                      TextButton(onPressed: () {
                      setState(() {
                        Get.back();
                        quizController.index=0;
                      });
                      }, child: Text("Retry")),
                    ],
                  ));

                }
              });
            },
            child: Container(
              height: 50,
              width: 300,
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black12),
               color: Colors.white,
               borderRadius: BorderRadius.circular(20),
             ),
              child: Center(
                child: Text('${quiz[quizController.index]['options'][2]}',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
             setState(() {
               quizController.chekD();
               if(quizController.life>0){
                 quizController.life-=1;

               }
               else{
                 quizController.life=3;
                 showDialog(context: context, builder: (context) => AlertDialog(
                   actions: [
                     TextButton(onPressed: () {
                       setState(() {
                         Get.toNamed('/home');
                         quizController.index=0;
                       });
                     }, child: Text("Back to home")),
                     TextButton(onPressed: () {
                       setState(() {
                         Get.back();
                         Get.toNamed('/game');
                         quizController.index=0;
                       });
                     }, child: Text("Retry")),
                   ],
                 ));

               }
             });
            },
            child: Container(
              height: 50,
              width: 300,
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black12),
               color: Colors.white,
               borderRadius: BorderRadius.circular(20),
             ),
              child: Center(
                child: Text('${quiz[quizController.index]['options'][3]}',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),
            ),
          ),
          SizedBox(height: 10,),



        ],
      ),
    );
  }
}
