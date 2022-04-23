import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_screen_flutter/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool security = true;
  bool rememberMePWD = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff65b0bb),
                Color(0xff5a9ea8),
                Color(0xff508c95),
                Color(0xff467b82),
                Color(0xff3c6970),
                Color(0xff32585d),
                Color(0xff28464a),
              ],
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login Screen',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    buildEmail(),
                    SizedBox(
                      height: 20.0,
                    ),
                    buildPassword(),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [buildRememberPWD(), buildForgetPWD()],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    buildLoginBtn(),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.facebook,
                                color: Colors.white, size: 50)),
                        /*Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(''),
                        )*/
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'الشروط والاحكام',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(color: Colors.black45),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
              color: Color(0xffebefff),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                )
              ]),
          child: TextField(
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'enter your email',
              hintStyle: TextStyle(color: Colors.black38),
              contentPadding: EdgeInsets.all(14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff4c5166),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyle(color: Colors.black45),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
              color: Color(0xffebefff),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                )
              ]),
          child: TextField(
            obscureText: security,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    security = !security;
                  });
                },
                icon: security ? visiblePassword : hidePassword,
              ),
              border: InputBorder.none,
              hintText: 'enter your password',
              hintStyle: TextStyle(color: Colors.black38),
              contentPadding: EdgeInsets.all(14.0),
              prefixIcon: Icon(
                Icons.vpn_key,
                color: Color(0xff4c5166),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildRememberPWD() {
    return Row(
      children: [
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: rememberMePWD,
            activeColor: Colors.white,
            checkColor: Colors.blueGrey,
            onChanged: (value) {
              setState(() {
                rememberMePWD = value ?? false;
              });
            },
          ),
        ),
        Text(
          'Remember Me',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget buildForgetPWD() {
    return TextButton(
        onPressed: () {  },
        child: Text(
          'Forget Password!',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
    );
  }

  Widget buildLoginBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Color(0xff3c6970),
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Login',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
