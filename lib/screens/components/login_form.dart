import 'package:flutter/material.dart';
import 'package:flutter_press_app/common/constants.dart';
import 'package:flutter_press_app/components/already_have_account.dart';
import 'package:flutter_press_app/screens/dashboard.dart';
import 'package:flutter_press_app/screens/login/login_screen.dart';
import 'package:flutter_press_app/services/user_service.dart';

TextEditingController emailController  = TextEditingController();
TextEditingController passwordController  = TextEditingController();


class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            controller: emailController,
            validator: (value){
              if(value == null  || value.isEmpty){
                return  'Please enter some text';
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: passwordController,
              validator: (value){
                if(value == null  || value.isEmpty){
                  return  'Please enter some text';
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          ElevatedButton(
            onPressed: () async {
              if(_formKey.currentState!.validate()){
                bool loginSuccess = await login(emailController.text.toString()
                    ,passwordController.text.toString());
                if(loginSuccess){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Dashboard();
                      },
                    ),
                  );
                }
              }
            },
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}