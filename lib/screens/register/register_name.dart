import 'package:crewin_ornek_proje/screens/register/gender_selection.dart';
import 'package:crewin_ornek_proje/screens/register/register_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterName extends StatefulWidget {
  const RegisterName({Key? key}) : super(key: key);

  @override
  State<RegisterName> createState() => _RegisterNameState();
}

class _RegisterNameState extends State<RegisterName> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
              builder: (context) {
                return const RegisterPage();
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 150, left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Name?",
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                )),
            SizedBox(
              height: 100.w,
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Card(
                elevation: 0.5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.6),
                  ),
                  child: TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        print('İsim boş olamaz!');
                        return '';
                      } else if (value.length < 2) {
                        print('İsminiz minumum iki karakterden oluşmalıdır!');
                        return '';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: "Your Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/userProperties',
                    (_) {
                  return false;
                });
              },
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5)),
                  minimumSize: const Size(325, 50)),
              child: Text("Continue",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
