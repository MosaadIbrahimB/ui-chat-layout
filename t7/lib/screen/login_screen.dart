import 'package:flutter/material.dart';

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
      //TODo Icon App and send to Talal
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
                ),
                SizedBox(height: size.height * .03),
                TextFormWidget(
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent, elevation: 0),
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
                    onPressed: () {},
                    child: const Text(
                      "Create  new account",
                      style: TextStyle(color: Color(0xff0064e0), fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                    height: size.height * .1,
                    width: size.width * .3,
                    child: Image.asset("assets/images/meta.png"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
