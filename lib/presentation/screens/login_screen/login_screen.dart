import 'package:flutter/material.dart';
import 'package:todo_firebase/presentation/screens/signup_screen/signup_screen.dart';

import '../dashboard_screen/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var nameController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset("assets/icons/ic_login.png",
            width: 200,
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 330, 0),
            child: Text('Login',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 180, 0),
            child: Text('Login to continue using the app',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 320, 0),
            child: Text('Email',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          SizedBox(height: 10,),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    
                    cursorColor: Colors.white,
                    controller: nameController,
                    decoration: InputDecoration(
                    
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: 'Enter your Email',
                      labelStyle: TextStyle(
                        color: Colors.black38
                      )
                      
                      
                     
                    ),
                  ),
                ),
              ),
            ),

            Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 280, 0),
            child: Text('Password',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold
            ),
            ),
          ),

            SizedBox(height: 10,),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    
                    cursorColor: Colors.white,
                    controller: passwordController,
                    decoration: InputDecoration(
                    
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: 'Enter password',
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelStyle: TextStyle(
                        color: Colors.black38
                      )
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(220, 20, 0, 0),
              child: Text('Forget Password?',
              style: TextStyle(
                fontSize: 15
              ),
              ),
            ),


            Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                // side: BorderSide(
                                //   color: Colors.white),
                                  backgroundColor:Colors.blue,
                                  
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                  ),
                                  
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoardScreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 130, vertical: 20),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 20,),
 Row(
  children: [
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 25.0),
                    child: Divider(
                      color: Colors.black38,
                      height: 36,
                    )),
              ),
              Text("Or Login With",
              style: TextStyle(
                color: Colors.black38
              ),
              ),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 25.0),
                    child: Divider(
                      color: Colors.black38,
                      height: 36,
                    )),
              ),
            ]),
       

       SizedBox(
        height: 30,
       ),
            Row(
              children: [
                SizedBox(width: 80,),
                ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            onPressed: () {},
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 0),
                                child: Image.asset(
                                  "assets/icons/ic_facebook.png",
                                  width: 24,
                                )
                                ),
                          ),
                        SizedBox(width: 40,),

                          ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Image.asset(
                              "assets/icons/ic_google.png",
                              width: 24,
                            )
                            ),
                      ),

                    SizedBox(width: 40,),

                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Image.asset(
                              "assets/icons/ic_apple.png",
                              width: 24,
                            )
                            ),
                      ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(110, 80, 0, 0),
              child: Row(
                children: [
                  Text("Dont't have an account?",
                  style: TextStyle(
                    fontSize: 15
                  ),
                  ),
                  
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    },
                    child: Text("Register",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue
                    ),
                    ),
                  )
                ],
              ),
            )

        ],
      ),
    );
  }
}