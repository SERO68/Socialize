import 'dart:developer';

import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  TextEditingController emaillogin = TextEditingController();
  TextEditingController passwordlogin = TextEditingController();

  

  Text error2 = const Text(
    'We didnt find any user',
    style: TextStyle(color: Colors.red, fontSize: 16, fontFamily: 'roboto'),
    textAlign: TextAlign.center,
  );
  Text error1 = const Text(
    '',
   
  );

  Text _errotext1 = const Text(
    '',
    style: TextStyle(color: Colors.red, fontSize: 16, fontFamily: 'roboto'),
    textAlign: TextAlign.center,
  );
  Text get errortext => _errotext1;

  List<Map<String, String>> users = [
    {'email': 'ahmed@gmail.com', 'password': 'Pass@123'},
    {'email': 'mostafa@yahoo.com', 'password': 'Pass@123'},
  ];

 void adduser(TextEditingController addemail, TextEditingController addpass) {
    String email = addemail.text;
    String pass = addpass.text;
    Map<String, String> mapadd = {'email': email, 'password': pass};
    users.add(mapadd);
    log(users[2]['email']!);

  }

  bool checkUserExists() {
    String emailInput = emaillogin.text;
    String passwordInput = passwordlogin.text;

    bool userExists = users.any((user) {
      return user['email'] == emailInput && user['password'] == passwordInput;
    });

    if (!userExists) {
      _errotext1 = error2;
      notifyListeners();
    } else {
      _errotext1 = error1;
            notifyListeners();

    }

    return userExists;
  }

 
}
