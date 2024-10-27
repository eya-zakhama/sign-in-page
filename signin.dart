// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:signin/field.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Welcome')),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(80),
            child: Column(
              children: [
                Text(
                  "sign in",
                  style: TextStyle(fontSize: 40),
                ),
                Image.asset("asses/signin_image.jpg", height: 200, width: 200),
                Field(text: 'Enter your name', obscure: false, ),
                    SizedBox(
                      height:30 , width:30 ),
                      Field(text: 'Enter your password', obscure: true, ),
                      SizedBox(height: 30),
                
               
                ElevatedButton(onPressed:(){}, 
                child: Text('Sign in'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                   backgroundColor: const Color(0xFF23ADBF),
                   shadowColor: Colors.black,
                   elevation: 5,
                   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                   shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(20), 
                        ), 
                   
                  

                ) ,
                
                
                ),
                

              ],
            ),
          ),
        ),
      ),
    );
    
  }
}
