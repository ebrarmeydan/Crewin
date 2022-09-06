import 'package:crewin_ornek_proje/screens/register/age_user.dart';
import 'package:crewin_ornek_proje/screens/register/gender_selection.dart';
import 'package:crewin_ornek_proje/screens/register/height_user.dart';
import 'package:crewin_ornek_proje/screens/register/register_name.dart';
import 'package:crewin_ornek_proje/screens/register/weight_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserProperties extends StatefulWidget {
  const UserProperties({Key? key}) : super(key: key);

  @override
  State<UserProperties> createState() => _UserPropertiesState();
}

class _UserPropertiesState extends State<UserProperties> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/registerName', (_) {
              return false;
            });
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 900,
        padding: EdgeInsets.only(bottom: 80),
        child: Column(
          children: [
            Container(
              height: 500,
              child: PageView(
                controller: _pageController,
                children: [
                  GenderSelectionpage(),
                  AgeUserPage(),
                  HeightUser(),
                  WeightUser(),
                ],
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 1), curve: Curves.linear);
              },
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5)),
                  minimumSize: const Size(325, 50)),
              child: Text("Next",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        //color: Colors.deepPurple,
        // padding: EdgeInsets.symmetric(horizontal: 50),
        height: 80,
        child: Center(
            child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: WormEffect(
                    activeDotColor: Colors.black,
                    radius: 8,
                    dotWidth: 10,
                    dotHeight: 10))),
      ),
    );
  }
}