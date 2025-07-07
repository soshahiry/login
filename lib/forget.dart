import 'package:flutter/material.dart';
import 'package:login/services.dart';

class forgett extends StatefulWidget {
  const forgett({super.key});

  @override
  State<forgett> createState() => _forgettState();
}

class _forgettState extends State<forgett> {
  TextEditingController emailcontroller=TextEditingController();

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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 32, color: Colors.blue),
                ),
                SizedBox(height: 38),
                Align(child: Text("Email"), alignment: Alignment.topLeft),
                TextFormField(controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  height: 50,
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      forpass(email: emailcontroller.text, context: context);
                    },
                    child: Text(
                      "Send link",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Image(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJnVZbfiIpIJ4xckLzlc2gMEqP-Ou0aldwWg&s",
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
