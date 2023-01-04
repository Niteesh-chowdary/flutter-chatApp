import 'package:flutter/material.dart';
import 'package:linked_in_learning/chat_page.dart';
import 'package:linked_in_learning/utils/spaces.dart';
import 'package:linked_in_learning/utils/textfield_styles.dart';
import 'package:linked_in_learning/widgets/login_text_field.dart';
import 'package:social_media_buttons/social_media_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  //TODO: Validate email and username values
  void loginUser(context) {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);

      Navigator.pushReplacementNamed(context, '/chat',arguments: userNameController.text);

      print('login successful!');
    } else {
      print('not successful!');
    }
  }

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let\'s sign you in!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
                Text(
                  'Welcome back! \n You\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.blueGrey),
                ),
                verticalSpacing(12),
                Image.asset(
                  'assets/chatappIcon.webp',
                  height: 200,
                ),
                verticalSpacing(24),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      LoginTextField(
                        validator: (value) {
                          if (value != null &&
                              value.isNotEmpty &&
                              value.length < 5) {
                            return "Your username should be more than 5 characters";
                          } else if (value != null && value.isEmpty) {
                            return "Please type your username";
                          }
                          return null;
                        },
                        controller: userNameController,
                        hintText: 'Enter your username',
                      ),
                      verticalSpacing(24),
                      LoginTextField(
                        hasAsterisk: true,
                        controller: passwordController,
                        hintText: 'Enter your password',
                      ),
                    ],
                  ),
                ),
                verticalSpacing(24),
                ElevatedButton(
                    onPressed: (){
                      loginUser(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                    )),
                GestureDetector(
                  onTap: () {
                    //todo: Navigate to browser
                    print('Link clicked!');
                  },
                  child: Column(
                    children: [
                      Text('Find us on'),
                      Text('https://matladuko.com'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaButton.twitter(url: 'https://twitter.com',color: Colors.lightBlue,),
                    SocialMediaButton.linkedin(url: 'https://linkedin.com',color: Colors.blue[900],),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}