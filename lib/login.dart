import 'package:flutter/material.dart';
import 'package:my_work/signUp.dart';

import 'shared/components.dart';

class login extends StatelessWidget {
  Color mainColor = const Color(0xFF5885BC);
  String fontFamily = ('Acme-Regular.ttf');
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0.0),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                title(),
                const SizedBox(height: 120,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(text: 'Login', fontSize: 30.0, colorText: Colors.black),
                    const SizedBox(height: 5.5,),
                    text(text: 'Email', fontSize: 20.0, colorText: Colors.black),
                      TextFormField(
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'Email can not empty';
                          }
                          else if(!value.contains('@gmail.com'))
                          {
                            return 'please enter a valid email address';
                          }
                          return null;


                        },
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Eg.abc@xyz.com',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType:TextInputType.emailAddress,
                        onFieldSubmitted: (value){
                        },
                        onChanged: (value){
                        },
                      ),
                      const SizedBox(height: 5.0,),
                      Row(
                        children: [
                          text(text: 'It must be more than 6 letter', fontSize: 12, colorText: mainColor),

                          const SizedBox(width: 5.5,),
                          const CircleAvatar(
                            radius: 4.0,
                              backgroundColor: Colors.grey,
                              child: Icon(
                                Icons.question_mark,
                                size: 7.0,
                                color: Colors.white,
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      text(text: 'Password', fontSize: 20, colorText: Colors.black,),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Confirmation password can not empty';
                          } else if (value.length < 7) {
                            return 'password must be at least 8 characters';
                          }
                          return null;
                        },
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword ,
                        obscureText: true,
                        onFieldSubmitted: (String value){print(value);},
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                          hintText: 'Eg.*******',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 5.0,),
                      Row(
                        children: [
                          text(text:'It must be more than 6 letter', fontSize: 12.0, colorText: mainColor),
                          const SizedBox(width: 5.5,),
                          const CircleAvatar(
                            radius: 4.0,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.question_mark,
                              size: 7.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 144.0,
                            child: MaterialButton(
                              height: 61,
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),),
                              onPressed: ()
                              {
                                if(formKey.currentState!.validate())
                                {
                                  print(emailController.text);
                                  print(passwordController.text);
                                }

                              },
                              color: mainColor,
                            child:
                                text(text: 'Login', fontSize: 20.0, colorText: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(
                                  text: 'Don\'t have an account?',
                                  fontSize: 12.0,
                                  colorText: Colors.black),
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
                                },
                                child:
                                    text(text: 'Sign up', fontSize: 12.0, colorText: mainColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
