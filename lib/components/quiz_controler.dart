import 'package:get/get.dart';

import '../utils/list.dart';

class QuizController  extends GetxController{
  int scor=0;
  int index=0;
  int life=3;
  bool right=false;
  void chekA(){
    if(quiz[index]['options'][0]==quiz[index]['answer']){
      print('hi--------------');
      right=true;
      if(1>0){
        index+=1;


      }


      scor+=1;
      print(right);

    }
    else{
      print('rong--------------------'+'${life}');



    }

  }
  void chekB(){
    if(quiz[index]['options'][1]==quiz[index]['answer']){
      print('hi--------------');
      right=true;
      scor+=1;
      if(1>0){
        index+=1;


      }

    }
    else{

      print('rong--------------------'+'${life}');


    }

  }
  void chekC(){
    if(quiz[index]['options'][2]==quiz[index]['answer']){
      print('hi--------------');
      right=true;
      scor+=1;
      if(1>0){
        index+=1;


      }

    }
    else{

      print('rong--------------------'+'${life}');


    }

  }
  void chekD(){
    if(quiz[index]['options'][3]==quiz[index]['answer']){
      print('hi--------------');
      right=true;
      scor+=1;
      if(1>0){
        index+=1;


      }
      }

    else{
      
      print('rong--------------------'+'${life}');

    }

  }






}