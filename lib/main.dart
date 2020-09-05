import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/login.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    onChanged: (value) {},
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'username',
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    obscureText: false,
                    onChanged: (value) {},
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                        hintText: 'password',
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                      child: Text('Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      color: Color(0xffff5f40),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
