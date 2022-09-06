import 'package:crewin_ornek_proje/screens/landing.dart';
import 'package:crewin_ornek_proje/screens/register/sign_in.dart';
import 'package:crewin_ornek_proje/screens/register/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _pageController = PageController();
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
              builder: (context) {
                return const LandingPage();
              },
            ), ((route) => false));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        AnimatedButtonBar(
          radius: 12.5,
          padding: const EdgeInsets.all(16.0),
          backgroundColor: Colors.blueGrey.shade200,
          foregroundColor: Colors.white,
          elevation: 5,
          borderColor: Colors.blueGrey.shade200,
          borderWidth: 1,
          innerVerticalPadding: 10,
          invertedSelection: true,
          children: [
            ButtonBarEntry(
              onTap: () {
                _pageController.previousPage(
                    duration: Duration(milliseconds: 1), curve: Curves.linear);
              },
              child: Text("Sign Up",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  )),
            ),
            ButtonBarEntry(
              onTap: () {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 1), curve: Curves.linear);
              },
              child: Text("Sign In",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color:Colors.black,
                  )),
            ),
          ],
        ),
        Container(
            width: double.infinity,
            height: 600.0,
            child: PageView(
              controller: _pageController,
              children: [SignUpPage(), SignInPage()],
            )),
      ]),
    );
  }
}
