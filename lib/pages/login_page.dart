import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kiosko_app/components/my_button.dart';
import 'package:kiosko_app/components/my_textfield.dart';
import 'package:kiosko_app/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordContoller = TextEditingController();

//
  void signinuser() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text, password: passwordContoller.text);

            Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
       Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongUserMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }

  
  }

  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Contraseña incorrecta"),
          );
        });
  }

  void wrongUserMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Correo incorrecto"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //logo
            const SizedBox(height: 20),
            Image.asset(
              'lib/img/Ice cream seller-pana.png',
              height: 220,
            ),
            const SizedBox(height: 20),
            //welcome back, you've been miss
            Text("Bienvenido de regreso!",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 25),
            // username textfield
            MyTextField(
                obscureText: false,
                controller: usernameController,
                hintText: 'Usuario'),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                obscureText: true,
                controller: passwordContoller,
                hintText: 'Contraseña'),

            // password
            const SizedBox(
              height: 10,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("olvidaste la contraseña?"),
                ],
              ),
            ),
            //sign in button
            const SizedBox(height: 10),
            MyButton(
              onTap: signinuser,
            ),
            //or continue with
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 0.5,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'O ingresa con',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 0.5,
                  )),
                ],
              ),
            ),

            // google + apple sign in buttons
            const SizedBox(
              height: 50,
            ),
            const SquareTile(imageurl: 'lib/img/search.png'),
            // not a member? registrer now
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No te has registrado?",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'Registrate ahora',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
