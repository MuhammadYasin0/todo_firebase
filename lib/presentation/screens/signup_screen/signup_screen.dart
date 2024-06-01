import 'package:flutter/material.dart';
import 'package:todo_firebase/presentation/screens/login_screen/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            padding: const EdgeInsets.fromLTRB(0, 0, 290, 0),
            child: Text('Register',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 180, 0),
            child: Text('Enter Your Personal Information',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 290, 0),
            child: Text('Username',
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
                      labelText: 'Enter your name',
                      labelStyle: TextStyle(
                        color: Colors.black38
                      )
                      
                      
                     
                    ),
                  ),
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 320, 0),
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
            padding: const EdgeInsets.fromLTRB(0, 20, 280, 0),
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
            padding: const EdgeInsets.fromLTRB(0, 20, 210, 0),
            child: Text('Confirm Password',
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
                      labelText: 'Enter confirm password',
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
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                // side: BorderSide(
                                //   color: Colors.white),
                                  backgroundColor:Colors.blue,
                                  
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                  ),
                                  
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 130, vertical: 20),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
        ],
      ),
    );
  }
}