import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 200,right: 200),
        child: Center(
          child: Column(
            children: [
              Text(
                "Sign UP",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                "Create An Account,Its Free",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Align(child: Text("UserName"),alignment: Alignment.topLeft,),
              TextField(
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
              Align(child: Text("Email"),alignment: Alignment.topLeft,),
              TextField(
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
              Align(child: Text("Password"),alignment: Alignment.topLeft,),
              TextField(
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
              Align(child: Text("Confirm Password"),alignment: Alignment.topLeft,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
