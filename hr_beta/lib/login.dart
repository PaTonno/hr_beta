import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_beta/home.dart';


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
                Text('RUN FROM THE RAPTORS', style: GoogleFonts.josefinSans()),
                
              ],
            ),
            
            const SizedBox(height: 120.0),
             TextField(
               style: GoogleFonts.josefinSans(),
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12),
             TextField(
              style: GoogleFonts.josefinSans(),
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
                  _usernameController.clear();
                  _passwordController.clear();
                },
              ),

              ElevatedButton(
                child: const Text('NEXT'),
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
              );
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