import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16), // Adjust padding
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image at the top (as in the uploaded image)
                Image.asset(
                  'assets/images/signup.jpg',
                  height: MediaQuery.sizeOf(context).height / 4,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create a new Account',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24, // Slightly smaller font
                        color: Colors.black),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Please fill the required details to continue',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Full name'),
                          prefixIcon: const Icon(Icons.account_circle_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10), // Spacing between form fields
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Email address'),
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Phone number'),
                          prefixIcon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          suffixIcon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Confirm password'),
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          suffixIcon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24), // Space between form and button
               SizedBox(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height / 16,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(31, 147, 238, 1)
                    ),
                  onPressed: (){}, 
                  child:const Text('Create Account',style: TextStyle(color: Colors.white),),),
                ),
                const SizedBox(height: 24), // Space between button and footer
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Have an account? ',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Color.fromRGBO(31, 147, 238, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Space at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
