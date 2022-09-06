import 'package:crewin_ornek_proje/components/register%20components/gender_widget.dart';
import 'package:crewin_ornek_proje/screens/register/age_user.dart';
import 'package:crewin_ornek_proje/screens/register/register_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GenderSelectionpage extends StatefulWidget {
  const GenderSelectionpage({Key? key}) : super(key: key);

  @override
  State<GenderSelectionpage> createState() => _GenderSelectionpageState();
}

class _GenderSelectionpageState extends State<GenderSelectionpage> {
  int _gender = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(12),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GenderWidget(onChange: (genderVal) {
                _gender = genderVal;
              }),
            ],
          ),
        ),
      ),
    );
  }
}
