import 'package:flutter/material.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(
            radius: 125,
            backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3APerson_icon_BLACK-01.svg&psig=AOvVaw1a0T-UwYra7F3CmrjEdhRf&ust=1685835142151000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMCbsrjfpf8CFQAAAAAdAAAAABAJ'),
            ),
              SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.8,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text('Login'),
            ),
            ],
          ),
        ),
      ),
    );
  }

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    if (username == '123200155' && password == '123200155') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login failed'),
            content: Text('Invalid username or password'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
