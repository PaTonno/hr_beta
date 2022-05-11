import 'package:flutter/material.dart';


//MISSING ON-PRESSED FUNCTIONS FOR BUTTONS

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key : key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
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

                Image.asset('assets/menudino.png'),
                const SizedBox(height: 16.0),
                const Text('RUN FROM RAPTORS'),
                
              ],
            ),
            
            const SizedBox(height: 120.0),
             TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12),
             TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
            obscureText: true,
            ),
          
          OverflowBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[

              TextButton(
                child: const Text('CANCEL'),
                onPressed: (){

                },
              ),

              ElevatedButton(
                child: const Text('NEXT'),
                onPressed: (){

                },
              )

            ]
          )
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }
}