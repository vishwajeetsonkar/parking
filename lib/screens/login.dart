import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:parking/models/users_model.dart';
import 'package:parking/screens/signUp.dart';
import 'package:parking/service/user_service.dart';
import 'package:provider/provider.dart';

import 'HomePage.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();


  
  late String _email;
  late String _password;
  var _userModel;

  _loginUser(context) async {
    _userModel = await ApiService().login({'email': _email, 'password': _password});
    Provider.of<User>(context, listen: false).userId = _userModel["userId"];
    print(_userModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always, key: formkey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: SizedBox(
                      width: 200,
                      height: 150,
                      child: Image.network('https://static.udchalo.com/client_assets/img/logo/logo.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                    validator:  MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      EmailValidator(errorText: "Enter valid email id")
                    ]),
                    onSaved: (value) {
                      _email = value!;
                    },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter secure password'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      MinLengthValidator(6,
                          errorText: "Password should be atleast 6 characters"),
                      MaxLengthValidator(15,
                          errorText:
                          "Password should not be greater than 15 characters")
                    ]),
                    onSaved: (value) {
                      _password = value!;
                    },
                ),
              ),
              TextButton(
                onPressed: () {
                  // ignore: todo
                  // TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      _loginUser(context);
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => const HomePage()));
                      print("Validated");
                    } else {
                      print("Not Validated");
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                onPressed: () => {
                  Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignUpForm()))
                },
                child: const Text('New User? Create Account'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

