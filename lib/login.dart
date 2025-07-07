import 'package:flutter/material.dart';
import 'package:login/forget.dart';
import 'package:login/services.dart' hide forgett;
import 'package:login/signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 650,
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                SizedBox(height: 27),
                Text(
                  "Login",
                  style: TextStyle(color: Colors.black, fontSize: 23),
                ),
                SizedBox(height: 13),
                Text("Login to your account", style: TextStyle(fontSize: 13)),
                SizedBox(height: 10),
                Align(child: Text("Email"), alignment: Alignment.topLeft),
                TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),

                Align(child: Text("password"), alignment: Alignment.topLeft),
                TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  child: Align(
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forgett()),
                    );
                  },
                ),
                SizedBox(height: 24),
                SizedBox(
                  height: 50,
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      llogin(
                        email: emailcontroller.text,
                        pasword: passwordcontroller.text,
                        context: context,
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
                        "Don't you have an account?",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: const Text(
                          "sign Up",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23),
                Image(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgzsOgTKM63byDh4B7g3qIllnw4sD45CmRcA&s",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
