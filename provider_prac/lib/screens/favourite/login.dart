import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passowrdController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider  = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration:const InputDecoration(
                  hintText: 'Email'
              ),
            ),

            const SizedBox(height: 20),
            TextFormField(
              controller: passowrdController,
              decoration:const InputDecoration(
                  hintText: 'Password'
              ),
            ),
            const SizedBox(height: 20,),

            InkWell(
              onTap: (){
                authProvider.login(
                  emailController.text.toString(),
                  passowrdController.text.toString()
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: authProvider.loading ? CircularProgressIndicator() : Text('Login',style: TextStyle(
                    color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
