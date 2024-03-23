import 'package:flutter/material.dart';

typedef validator = String? Function(String?)?;

class TextFormWidget extends StatelessWidget {
  TextFormWidget(
      {this.label,
      this.obscureText = false,
      this.suffix,
      this.valid,
      this.textEditingController});
  Widget? label;
  bool obscureText;
  Widget? suffix;
  validator valid;
  TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: TextFormField(



        controller: textEditingController,
        validator: valid,
        style: const TextStyle(fontSize: 22),
        decoration: InputDecoration(


          fillColor: Colors.white,
          filled: true,
          label: label,
          labelStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.red,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
              )),

          suffix: suffix,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
// (value){
// print(" value $value");
// if (value!.isEmpty ) {
// return 'Invalid input!';
// }
//
// }
