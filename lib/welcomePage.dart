import 'package:flutter/material.dart';
import 'package:foodiefaster/loginform.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Mass United Restaurants",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 150,
              child: Image.asset(
                "images/splashimg.gif",
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Spacer(),
            Card(
              
                color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 20,
                        width: 600,
                      ),
                    ),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "United Mass Resturants adjf ajdlk aslkfjsdfkjs a;dkfj as;llfjas f;lsadaslkfjsdfkjs a;dkfj as;llfjas f;lsad aslkfjsdfkjs a;dkfj as;llfjas f;lsad fksajf",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              
                              Container(
                                width: 150,
                                
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                    
                                    ),
                                    backgroundColor: Colors.black,
                                  ),
                                  onPressed: () {},
                                  child: Text("Sign Up",style: TextStyle(color: Colors.white),)
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 150,
                                child: ElevatedButton(
                                  
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)
                                      )
                                    ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const loginForm()),
                                    );
                                  },
                                  child: Text("Login",style: TextStyle(color: Colors.black),),
                                ),
                              ),
                              SizedBox(
                                height: 120,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
