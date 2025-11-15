import 'package:flutter/material.dart';

class LogRegPage extends StatefulWidget {
  const LogRegPage({super.key});

  @override
  State<LogRegPage> createState() => _LogRegPageState();
}

class _LogRegPageState extends State<LogRegPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F6B2F),

      body: Row(
        children: [
          // LEFT SIDE — solid color only
Expanded(
  child: Container(
    color: const Color(0xFF2F6B2F),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ADD IMAGE HERE
          Image.asset(
            "assets/cdm_logo.png", // palitan mo ng image mo
            width: 200,
          ),

          const SizedBox(height: 20),

          
        ],
      ),
    ),
  ),
),


          // RIGHT SIDE — LOGIN FORM
          Expanded(
            child: Center(
              child: Container(
                width: 380,
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9E8C9),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Please login!",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 30),

                    // EMAIL FIELD
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // PASSWORD FIELD
                    TextField(
                      obscureText: !showPassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // SHOW PASSWORD CHECKBOX
                    Row(
                      children: [
                        Checkbox(
                          value: showPassword,
                          onChanged: (value) {
                            setState(() {
                              showPassword = value!;
                            });
                          },
                        ),
                        const Text("Show Password"),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // LOGIN BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E4D1E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // GOOGLE BUTTON (NO IMAGE)
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.account_circle),
                        label: const Text("Sign in with Google"),
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          side: const BorderSide(color: Colors.black26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // REGISTER LINK
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("You don’t have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Sign up"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
