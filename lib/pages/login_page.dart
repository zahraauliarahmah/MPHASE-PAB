import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'register_page.dart';
import 'cycle_list_service.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback toggleTheme;

  const LoginPage({super.key, required this.toggleTheme});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final email = TextEditingController();
  final password = TextEditingController();

  Future login() async {
    try {

      await Supabase.instance.client.auth.signInWithPassword(
        email: email.text,
        password: password.text,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const CycleListPage(),
        ),
      );

    } catch (e) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login gagal: $e")),
      );

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: widget.toggleTheme,
          )
        ],
      ),

      body: Stack(
        children: [

          /// BACKGROUND
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// CONTENT
          Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(

                constraints: const BoxConstraints(
                  maxWidth: 1000,
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),

                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                    child: Container(

                      padding: const EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 50,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),

                      child: Row(
                        children: [

                          /// LEFT SIDE (ICON + TEXT)
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                ClipOval(
                                  child: Image.asset(
                                    "assets/icon.jpg",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                const SizedBox(height: 25),

                                const Text(
                                  "Hallo Perempuan Hebat ✨",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff7b3f4a),
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  "Selamat datang di MPHASE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff7b3f4a),
                                  ),
                                ),

                                const SizedBox(height: 10),

                                const Text(
                                  "Teman pencatat siklus menstruasi yang membantu kamu memahami tubuhmu dengan lebih baik",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          const SizedBox(width: 60),

                          /// RIGHT SIDE (FORM LOGIN)
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                /// EMAIL
                                TextField(
                                  controller: email,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.8),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 20),

                                /// PASSWORD
                                TextField(
                                  controller: password,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.8),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 30),

                                /// LOGIN BUTTON
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,

                                  child: ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffd58b9c),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),

                                    onPressed: login,

                                    child: const Text(
                                      "Login",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 10),

                                /// REGISTER
                                TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const RegisterPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Create Account",
                                    style: TextStyle(
                                      color: Color(0xff7b3f4a),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}