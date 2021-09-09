import 'package:flutter/material.dart';
import 'package:virgin_milk/colors/color.dart';

class Authhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authhomepage(),

    );
  }
}

class Authhomepage extends StatefulWidget {
  @override
  _AuthhomepageState createState() => _AuthhomepageState();
}

class _AuthhomepageState extends State<Authhomepage> {

  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFF97d1e9),
        child: SafeArea(
          child: Container(
            child: Stack(
              children: [


                SizedBox(child: Image.asset('assets/authbg.jpeg',fit: BoxFit.fill,),
                width: MediaQuery.of(context).size.width,),



                Positioned(
                  left: 20,
                    right: 20,
                    top: MediaQuery.of(context).size.height * .35 ,

                    child: Container(


                      height: 200,
                      //color: Colors.deepPurple,
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                            child: Container(
                             // color: Colors.black38,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(5)),
                              child: Center(
                                  child: TextFormField(
                                    textAlign: TextAlign.left,
                                    cursorColor: Colors.black,
                                    keyboardType:
                                    TextInputType.phone,
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                          top: 10,
                                          right: 10),
                                      hintText: "Mobile Number",
                                      hintStyle: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey,
                                          fontFamily: 'Poppins'),
                                    ),
                                  )),
                            ),
                          ),


                          SizedBox(
                            height: 10,
                          ),


                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              child: Text('Continue'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: CustomColor.buttoncolor,
                                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                         // FlatButton(onPressed: (){}, child: Text('wqqqqqq'))

                          SizedBox(
                            height: 10,
                          ),

                          Text(
                            'By clicking continue you ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),


                          Text(
                            'Agree terms aand conditions',
                            textAlign: TextAlign.center,

                            style: TextStyle(
                                fontFamily: 'Poppins',
                                decoration: TextDecoration.underline,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),


                        ],
                      ),
                    )


                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}

