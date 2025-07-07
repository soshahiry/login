import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/services.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Center(
          child: Container(
            height: 650,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [SizedBox(height: 45,),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  Text(
                    "Create An Account,Its Free",
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  SizedBox(height: 25,),
                  Align(child: Text("UserName"), alignment: Alignment.topLeft),
                  TextFormField(controller: namecontroller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(child: Text("Email"), alignment: Alignment.topLeft),
                  TextFormField(controller: emailcontroller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(child: Text("Password"), alignment: Alignment.topLeft),
                  TextFormField(controller: passwordcontroller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    child: Text("Confirm Password"),
                    alignment: Alignment.topLeft,
                  ),
                  TextFormField(controller: confirmcontroller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: 500,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => login(),));
                        signup(username: namecontroller.text,
                            email: emailcontroller.text,
                            password: passwordcontroller.text,
                            confirm: confirmcontroller.text,context: context);

                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already  have an account?",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => login(),));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
