import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    "LogIn",
                    style: GoogleFonts.merriweather(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 50,
                  child: Image.asset(
                    "assets/Images/dmjicon-452e36a9.png",
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height: 350,
              child: Center(
                child: Image.asset(
                  "assets/Images/QR Code.gif",
                  fit: BoxFit.scaleDown,
                ),
              )),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.all(25),
            child: Loginpage(),
          )),
        ],
      ),
    );
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: HexColor("#8d8d8d"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            TextField(
              controller: emailController,
              obscureText: false,
              cursorColor: HexColor("#4f4f4f"),
              decoration: InputDecoration(
                hintText: "hello@gmail.com",
                fillColor: HexColor("#f0f3f1"),
                contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                hintStyle: GoogleFonts.poppins(
                  fontSize: 15,
                  color: HexColor("#8d8d8d"),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.mail_outline),
                prefixIconColor: HexColor("#4f4f4f"),
                filled: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Text(
                "",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 5),
              child: Text(
                "Password",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: HexColor("#8d8d8d"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              cursorColor: HexColor("#4f4f4f"),
              decoration: InputDecoration(
                hintText: "**************",
                fillColor: HexColor("#f0f3f1"),
                contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                hintStyle: GoogleFonts.poppins(
                  fontSize: 15,
                  color: HexColor("#8d8d8d"),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.lock_outline),
                prefixIconColor: HexColor("#4f4f4f"),
                filled: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Forget Password",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 208, 182, 70),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 55,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 208, 182, 70),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text("Submit",
                          style: GoogleFonts.montserrat(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
