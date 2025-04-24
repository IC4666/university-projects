import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      // appBar: AppBar(title: const Text('Login')),
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 150.0,
        title: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'WorkSync',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 0, 0, 0),
                  // backgroundColor: Color.fromARGB(255, 231, 0, 0),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          width: 400, 
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255), // light gray
            borderRadius: BorderRadius.circular(20), 
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //Implement login with backend 
                },
                child: const Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: const Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
