import 'package:flutter/material.dart';
import 'package:my_work/shared/components.dart';

class last_screen extends StatelessWidget {
  const last_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage('images/titleicon.png'),),
                SizedBox(width: 23.0,),
                Text(
                  'sv-Test',
                  style: TextStyle
                    (
                    color: Colors.black,
                    fontSize: 50.0,
                    fontFamily: 'Acme-Regular.ttf',
                  ),
                ),
              ],),
            const SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Let\'s make,',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Acme-Regular.ttf',
                    ),
                  ),
                  Row(children: const [
                    Text(
                      'it together',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Acme-Regular.ttf',
                      ),

                    ),
                    SizedBox(width: 7.0,),
                    Image(image: AssetImage('images/light_1.png',),),
                  ],),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        defaultContainer(
                            backgroundColor: const Color(0xFF5885BC),
                            text: 'Model-A',
                            colorText1: Colors.white,
                            colorText2: Colors.white,
                        ),
                        const SizedBox(width: 13.0,),
                        defaultContainer(
                          backgroundColor: Colors.white,
                          text: 'Model-B',
                          colorText1: Colors.black,
                          colorText2: Colors.black,
                        ),
                        const SizedBox(width: 13.0,),
                        defaultContainer(
                            backgroundColor: const Color(0xFF5885BC),
                            text: 'Model-C',
                            colorText1: Colors.white,
                            colorText2: Colors.white,
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  const Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Text(
                      'My-Learning',
                      style: TextStyle
                        (
                        color: Color(0xFF081131),
                        fontSize: 25.0,
                        fontFamily: 'Acme-Regular.ttf',
                      ),
                    ),

                  ),
                  defaultDivider(),
                  Column(
                    children: [
                    defaultRaw(text: 'Chapter:16',),
                    defaultDivider(),
                    defaultRaw(text: 'Chapter:11',),
                    defaultDivider(),
                    defaultRaw(text: 'Chapter:16'),


                  ],),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
