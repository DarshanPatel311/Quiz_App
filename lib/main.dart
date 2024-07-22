import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/view/game_screen.dart';
import 'package:quiz_app/view/home_screen.dart';
 void main(){

   runApp(const MyApp());
 }
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       debugShowCheckedModeBanner: false,
       getPages: [
         GetPage(name: '/home', page: () => HomeScreen()),
         GetPage(name: '/game', page: () => GameScreen()),
       ],
       home: HomeScreen(),


     );
   }
 }
