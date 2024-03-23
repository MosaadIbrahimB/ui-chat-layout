import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tf/screen/create_account_screen.dart';
import '../widget/text_form_widget.dart';
import 'layout_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool _obscureText = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                  obscureText: _obscureText,
                  suffix: InkWell(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
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
                          Navigator.pushReplacementNamed(context, LayOutScreen.routeName);
                        }
                      }

                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                SizedBox(height: size.height * .13),
                SizedBox(
                  width: size.width,
                  height: 45,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xff0064e0), width: 1.8)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(CreateAccountScreen.routeName);
                    },
                    child: const Text(
                      "Create  new account",
                      style: TextStyle(color: Color(0xff0064e0), fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                    height: size.height * .1,
                    width: size.width * .25,
                    child: Image.asset("assets/images/meta.png",color: Colors.blue,))
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

}
