import 'package:crewin_ornek_proje/screens/register/age_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'gender_selection.dart';
import 'package:flutter/cupertino.dart';

class HeightUser extends StatefulWidget {
  const HeightUser({Key? key}) : super(key: key);

  @override
  State<HeightUser> createState() => _HeightUserState();
}

class _HeightUserState extends State<HeightUser> {
  int _currentValue = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 50, right: 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("How much is your lenght?",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  )),
              SizedBox(height: 100.h),
              NumberPicker(
                value: _currentValue,
                minValue: 100,
                maxValue: 300,
                onChanged: (value) => setState(() => _currentValue = value),
              ),
            ]),
      ),
    );
  }
}
