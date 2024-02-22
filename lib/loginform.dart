import 'package:flutter/material.dart';
import 'package:foodiefaster/cart.dart';

class loginForm extends StatelessWidget {
  const loginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 150,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: ("Username"),
                        filled: true,
                        fillColor: Color.fromARGB(70, 181, 180, 178),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: ("Password"),
                        filled: true,
                        fillColor: Color.fromARGB(70, 181, 180, 178),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 20),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: Size(400, 50)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          fixedSize: Size(400, 50),
                          shadowColor: Colors.black,
                          elevation: 6.0,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/google.png")),
                            ),
                            Spacer(),
                            Text(
                              "Signup with Google",
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          fixedSize: Size(400, 50),
                          shadowColor: Colors.black,
                          elevation: 6.0,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/facebook.png"),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Signup with Facebook",
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 30,
        color: Colors.amber,
      ),
    );
  }
}
