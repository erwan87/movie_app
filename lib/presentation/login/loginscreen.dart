import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/presentation/main/mainscreen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/';
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email     = new TextEditingController();
  final password  = new TextEditingController();

  // Proses Login
  void prosesLogin() async {
    var datalogin = await http.post(
        Uri.parse("https://selangkah.freehost.my.id/Api/Login/"),
        body: {
          "username": email.text,
          "password": password.text
        });

    // Testing email selangkah@selangkah.org password : flutterbatch1
    var login = await json.decode(datalogin.body);
    
    if(login['response_status'] == "OK"){
      // Redirect Jika Status OK
      Navigator.pushNamed(context,MainScreen.routeName);
    }else{
      // Jika Tidak OK Tampilkan Dialog Error
      _showDialog();
    }
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Warning !!!"),
          content: new Text("Wrong Username / Password ... "),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new TextButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 50.0, right: 50.0),
          children: <Widget>[
            Hero(
              tag: 'hero',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 80.0,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),

            SizedBox(height: 48.0),

            Text(
                "WELCOME",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white, 
                fontSize: 30.0,
                ),
            ),

            Text(
                "ready to watch",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white, 
                fontSize: 14.0,
                ),
            ),

            SizedBox(height: 35.0),

            TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              style: TextStyle(color: Colors.white),
              decoration: 
              InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),

            SizedBox(height: 8.0),

            TextFormField(
              controller: password,
              autofocus: false,
              // initialValue: 'some password',
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),

            SizedBox(height: 8.0),

            Text(
                "Forgot Password ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white, 
                fontSize: 10.0,
                ),
            ),

            SizedBox(height: 24.0),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(32.0)),
                primary: Colors.red, //background color of button
                elevation: 3, //elevation of button
                padding: EdgeInsets.all(10),//content padding inside button
              ),
              onPressed: (){
                prosesLogin();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.white, 
                        fontSize: 20.0,
                        ),
                    ),
                ],
              ),
            ),

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'its your first time her ?',
                style: TextStyle(color: Colors.white),
                children: const <TextSpan>[
                          TextSpan(
                            text: ' Sign Up ', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
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