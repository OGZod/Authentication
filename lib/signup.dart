import 'package:authentication/model.dart';
import 'package:authentication/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Register User'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Fill the fields below'),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: usernameController,
                onChanged: (value) {},
                autocorrect: false,
                // enableSuggestions: type == 'password' ? false : true,
                decoration: const InputDecoration(
                  floatingLabelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black12,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'username',
                  labelStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    child: Icon(CupertinoIcons.profile_circled),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      gapPadding: 16.0,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (value) {},
                autocorrect: false,
                // enableSuggestions: type == 'password' ? false : true,
                decoration: const InputDecoration(
                  floatingLabelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black12,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'email',
                  labelStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    child: Icon(CupertinoIcons.profile_circled),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      gapPadding: 16.0,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                onChanged: (value) {},
                autocorrect: false,
                // enableSuggestions: type == 'password' ? false : true,
                decoration: const InputDecoration(
                  floatingLabelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black12,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'password',
                  labelStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    child: Icon(CupertinoIcons.profile_circled),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      gapPadding: 16.0,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    UserRepository.register(UserModel(
                        username: usernameController.text,
                        email: emailController.text,
                        password: passwordController.text
                    ));
                    },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 25),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
