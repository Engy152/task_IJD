import 'package:flutter/material.dart';
import 'package:my_work/login.dart';
import 'package:my_work/shared/components.dart';

class signUp extends StatelessWidget {
  Color mainColor = const Color(0xFF5885BC);
  String fontFamily = ('Acme-Regular.ttf');
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpassController = TextEditingController();
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
                const SizedBox(height: 25,),
                text(text: 'Creat your acount', fontSize: 30.0, colorText: Colors.black),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(text: 'User name', fontSize: 20.0, colorText: Colors.black),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'User name can not be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Eg.Omar Mostafa' ,
                          border: OutlineInputBorder(),
                        ),
                        keyboardType:TextInputType.emailAddress,
                        onFieldSubmitted: (value){
                        },
                        onChanged: (value){
                        },
                      ),
                      const SizedBox(height: 13.0,),
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
                        //controller: TextEditingController(text: 'Eg.abc@xyz.com'),
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
                      const SizedBox(height: 13.0,),
                      text(text: 'Phone', fontSize: 20, colorText: Colors.black),
                      TextFormField(
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'phone can not empty';
                          }
                          else if (value.length>11)
                          {
                            return 'phone number must consist of 11 ';
                          }
                          else if (value.length<11)
                          {
                            return 'phone number must consist of 11 ';
                          }
                          return null;

                        },
                        controller: phoneController,
                        decoration: const InputDecoration(
                          hintText: 'Eg.01234567890',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType:TextInputType.phone,
                        onFieldSubmitted: (value){
                        },
                        onChanged: (value){
                        },
                      ),
                      const SizedBox(height: 13.0,),
                      text(text: 'Password', fontSize: 20.0, colorText: Colors.black),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password can not empty';
                          } else if (value.length < 7) {
                            return 'password must be at least 8 characters';
                          }
                          return null;
                        },

                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword ,
                        obscureText: true,
                        onFieldSubmitted: (String value){
                          print(value);
                          },
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                          hintText: 'Eg.*******',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 13.0,),
                      text(text: 'Confirm password', fontSize: 20.0, colorText: Colors.black),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Confirmation password can not empty';
                          } else if (value.length < 7) {
                            return 'password must be at least 8 characters';
                          }
                          return null;
                        },
                        controller: confirmpassController,
                        keyboardType: TextInputType.visiblePassword ,
                        obscureText: true,
                        onFieldSubmitted: (String value){print(value);},
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                          hintText: 'Eg.*******',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25.0,),
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
                                  print(phoneController.text);
                                  print(confirmpassController.text);

                                }

                              },
                              child: text(text: 'Signup', fontSize: 20.0, colorText: Colors.white),
                              color: mainColor,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(text: 'Already have an account?', fontSize: 14.0, colorText: Colors.black),
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                                },

                                child:
                                text(text: 'Login', fontSize: 14.0, colorText: mainColor),
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
