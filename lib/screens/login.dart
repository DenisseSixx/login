import 'package:flutter/material.dart';
import 'package:log/screens/registro.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the Portal Login')  , 
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
            SizedBox(height: 16.0),
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
              child: Text("Sing In"),
            ),
          
            SizedBox(height: 34.0),
            ElevatedButton(
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistroPage()),
                  );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green
              ),
              child: Text("Sing Up")
              )
          ],
        ),
      ),
    );
  }
}
