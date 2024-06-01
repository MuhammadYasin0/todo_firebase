import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  
  var titleController = TextEditingController();
  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu,
                    color: Colors.blue,
                                 size: 30,)),
          
                 SizedBox(width: 260,),
                    
                    Image.asset("assets/icons/ic_login.png",
            width: 120,
            ),
                  ],
                ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(40, 200, 0, 0),
            child: Image.asset("assets/images/img_dashboard.png",
            width: 350,
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(130, 550, 0, 0),
            child: Text('Add a task to get started',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black38
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(200, 700, 0, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
              ),
              onPressed: (){
                
                showModalBottomSheet(
            backgroundColor: Colors.black38,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
            context: context,
            builder: (_) {
              return Column(
                children: [
                  
                  SizedBox(height: 40,),

                  Text('Add Todo',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white
                  ),
                  ),

                  SizedBox(height: 20,),
                   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    
                    cursorColor: Colors.blue,
                    controller: titleController,
                    decoration: InputDecoration(
                    
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: 'Title',
                      labelStyle: TextStyle(
                        color: Colors.black38
                      ),
                    ),
                  ),
                ),
              ),
            ),


             SizedBox(height: 20,),
                   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    
                    cursorColor: Colors.blue,
                    controller: descController,
                    decoration: InputDecoration(
                    
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: 'Description',
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
                              
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              ),
                              
                              onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoardScreen()));
                              },
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            child: Text(
                              "Add",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                              ),
                            )
                          ),
                  
                  
                ],
              );
            },
          );

              }, child: Icon(Icons.add,
              size: 30,
              )),
          )
        ],
      ),
    );
  }
}