import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tf/screen/login_screen.dart';

import '../widget/text_form_widget.dart';
import 'layout_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  static const String routeName = "CreateAccountScreen";
  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late bool _obscurePassword = true;
  late bool _obscureConformPassword = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  var keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffebf4fd),
      body: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            key: keyForm,
            child: Column(
              children: [
                SizedBox(height: size.height * .05),
                SizedBox(
                  width: size.width * .45,
                  child: const ExpansionTile(
                    title: Text("English(US)"),
                    children: [
                      Text("English(US)"),
                      Text("Arabic"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .05),
                const Icon(Icons.facebook_outlined,
                    color: Colors.blue, size: 70),
                SizedBox(height: size.height * .05),
                TextFormWidget(
                  label: const Text("Mobile number or email"),
                  textEditingController: email,
                  valid: validName,
                ),
                SizedBox(height: size.height * .03),
                TextFormWidget(
                  valid: validPassword,
                  textEditingController: password,
                  label: const Text("Password"),
                  obscureText: _obscurePassword,
                  suffix: InkWell(
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      child: const Icon(Icons.visibility)),
                ),
                SizedBox(height: size.height * .02),
                TextFormWidget(
                  valid: validRePassword,
                  textEditingController: rePassword,
                  label: const Text("Conform Password"),
                  obscureText: _obscureConformPassword,
                  suffix: InkWell(
                      onTap: () {
                        setState(() {
                          _obscureConformPassword = !_obscureConformPassword;
                        });
                      },
                      child: const Icon(Icons.visibility)),
                ),
                SizedBox(height: size.height * .02),
                SizedBox(
                  width: size.width,
                  height: 46,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2295f2)),
                    onPressed: () {
                      var currentState = keyForm.currentState;
                      if (currentState != null) {
                        if (currentState.validate()) {
                          Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                        }
                      }

                    },
                    child: const Text(
                      "sign up",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  },
                  child: const Text(
                    "Login screen?",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


 String? validName(String ?name){
    name=email.text;
    if (name == null || name.trim().isEmpty) {
      return ' Enter  correct value';
    }

    return null;
  }



  String?  validPassword(String? text) {
    text=password.text;
    String msgError = ' Enter your correct Password';
    if (text == null || text.trim().isEmpty) {
      return " $msgError ";
    }
    if (text.length < 6) {
      return "$msgError greater than 6 char";
    }
    return null;
  }



 String ? validRePassword  (String? text) {
  String passwordText=password.text;
   text=rePassword.text;
    String msgError = ' Enter your correct Password';
    if (text == null || text.trim().isEmpty) {
      // print('ll');
      return " $msgError ";
    }
    if (text.length < 6) {
      return "$msgError greater than 6 char";
    }

    if (text != passwordText) {
      return " Password not match";
    }
    return null;

   }

}
