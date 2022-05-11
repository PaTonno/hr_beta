import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key : key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(

          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[

            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[

                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
                
              ],
            ),
            
            const SizedBox(height: 120.0),
            const TextField(

              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',

              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
            obscureText: true,
            ),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }
}