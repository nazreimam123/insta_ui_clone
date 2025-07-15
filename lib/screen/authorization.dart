import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insta_ui_clone/screen/bottomNav.dart';
import 'package:insta_ui_clone/screen/signupPage.dart';

class Authorization extends StatefulWidget {
  const Authorization({super.key});

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        // title: Text('Authorzation'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 167),
            Image.asset('assets/img/Instagram Logo (1).png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
              
                controller: emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),

                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 15),
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Instasearch()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    
                  ),
                  fixedSize: Size(400, 30),
                  backgroundColor: Color(0xfff3797EF),
                ),
                child: Text('Log in', style: TextStyle(color: Color(0xffffffff))),
              ),
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, color: Colors.lightBlue),
                SizedBox(width: 6),
                Text(
                  'Log in with Facebook',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text('OR', style: TextStyle(color: Colors.grey)),

            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                text: 'Don’t have an account  ',
                children: [
                  TextSpan(
                    text: 'Sign up.',
                    style: TextStyle(color: Colors.lightBlue),
                    recognizer: TapGestureRecognizer()
                    ..onTap =(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
