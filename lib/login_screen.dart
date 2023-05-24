import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var ControllerEmail = TextEditingController();
  var ControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(),
  body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Login' ,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: ControllerEmail ,
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted:(
              String value
              ) {
                print(value);
              }
              ,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(
                  Icons.email,
                ),
                border: OutlineInputBorder(),



              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: ControllerPassword,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted:(
                  String value
                  ) {
                print(value);
              }
              ,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(
                  Icons.lock
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                border: OutlineInputBorder(),



              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(onPressed: () {
                print(ControllerEmail.text);
                print(ControllerPassword.text);
              } ,
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,

                ),
              ),),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ? ',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                TextButton(onPressed: () {} ,
                    child: Text(
                      'Register Now',
                    )
                )
              ],
            ),
          ],
        ),
      ),
    ),
  ),
);
  }
}
