import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Portal Registration')  , 
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/BAR.png', 
              height: 100.0,
            ),
            SizedBox(height: 32.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Dimension C-137 Username',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 16.0,), 
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email', 
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Plumbus Password',
                fillColor: Colors.white,
                filled: true,
              ),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}