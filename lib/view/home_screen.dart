import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/components/quiz_controler.dart';
import 'package:quiz_app/utils/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final QuizController quizController=Get.put(QuizController());
    return Scaffold(
      backgroundColor: Color(0xfffcfcfe),
      appBar: AppBar(
        backgroundColor: Color(0xfffcfcfe),
        title: Text('Hello DK!',style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("What would you like to play\ntoday?",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Color(0xff46557b)
              ),),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: 650,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 180,
                      width: 200,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(color: Colors.black12),

                       borderRadius: BorderRadius.circular(10)
                     ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img/sport.jpeg'),

                                fit:BoxFit.contain
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sport Quiz',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff46557b),
                                    fontSize: 16

                                ),),
                                Text("20 Questions",style: TextStyle(
                                    color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 200,
                     decoration: BoxDecoration(
                         border: Border.all(color: Colors.black12),
                       borderRadius: BorderRadius.circular(10)
                     ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img/s2.jpeg')
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Science Quiz',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff46557b),
                                    fontSize: 16

                                ),),
                                Text("20 Questions",style: TextStyle(
                                    color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 200,
                     decoration: BoxDecoration(
                         border: Border.all(color: Colors.black12),
                       borderRadius: BorderRadius.circular(10)
                     ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img/ani2.jpeg')
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Animal Quiz',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff46557b),
                                    fontSize: 16

                                ),),
                                Text("20 Questions",style: TextStyle(
                                    color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text("Unfnished Games",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff46557b)
              ),),
            ),
            GestureDetector(
                onTap: () {
                  Get.toNamed('/game');
                  quizController.life=3;



                },
                child: quizBox('assets/img/mathe.jpg','Mathematics Quiz')),
            quizBox('assets/img/scienc.webp','Science Quiz'),
            quizBox('assets/img/animal.png','Naming Animals Quiz'),
            quizBox('assets/img/Home Screen 1.png','Other Quiz'),
             ],
        ),
      )
    );
  }

  Container quizBox(String img,String name) {
    return Container(
          height: 70,
          margin: EdgeInsets.all(15),
         decoration: BoxDecoration(

           color: Colors.white,
           borderRadius: BorderRadius.circular(10)
             ,
           border: Border.all(color: Colors.black12),
         ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(img),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff46557b)

                    ),),
                    Text("20 Questions",style: TextStyle(
                      color: Colors.grey
                    ),)
                  ],
                ),
              )
            ],
          ),
        );
  }
}
bool isclik=false;