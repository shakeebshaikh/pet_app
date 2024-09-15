import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height / 1.3,
            padding: const EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/login.jpg', 
                height: MediaQuery.sizeOf(context).height/4,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Welcome Back!',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Please sign in to continue.')),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                    label: const Text('Email address'),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                    label: const Text('Password'),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye)
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height / 16,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(31, 147, 238, 1)
                    ),
                  onPressed: (){}, 
                  child:const Text('Login',style: TextStyle(color: Colors.white),),),
                ),
                RichText(
                text: const TextSpan(text: 'Don\'t have an account? ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Register',style: TextStyle(color: Color.fromRGBO(31, 147, 238, 1))
                  ),
                ]),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}