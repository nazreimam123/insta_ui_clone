import 'package:flutter/material.dart';

class Uihelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType typeIO,
  }) {
    return Container(
      width: 343,
      height: 44,
      decoration: BoxDecoration(
        color: Color(0xff121212),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffffffff)),
      ),
      child: TextField(
        controller: controller,
        obscureText: tohide,
        keyboardType: typeIO,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgUrl}){
    return Image.asset('assets/img/$imgUrl');
  }

  static CustomTextButton({required String text,required VoidCallback callback}){
    TextButton(onPressed: (){
      callback();
    }, child: Text(text,style: TextStyle(fontSize: 12,color: Color(0xff3797EF)),),);
  }
}
