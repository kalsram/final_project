import 'package:flutter/material.dart';
import 'package:ui/homepage.dart';
import 'package:ui/register.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 227, 235, 242), // Change as needed
              ),
              child: Center(
                child: Text(
                  'logo',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mail',
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                
                decoration: InputDecoration(
                  labelText: 'password',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(110, 45)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 234, 59, 47)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text('login'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Center(
                  child: Text('not a user?'),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text('click here'))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
