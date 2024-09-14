import 'package:flutter/foundation.dart';
import'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView (
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),

                const SizedBox (
                  height:40.0,
                ),

                TextFormField (
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value){
                    if (kDebugMode) {
                      print(value);
                    }
                  },

                  onChanged: (String value){
                    if (kDebugMode) {
                      print(value);
                    }
                  },

                  validator: (value)
                  {
                    if(value==null||value.isEmpty)
                      {
                        return 'Email Address must not be empty!';
                      }
                    return null;
                  },
                  decoration:const InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border:OutlineInputBorder(),
                  ),
                ),


                const SizedBox(
                  height:15.0,
                ),

                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value){
                    if (kDebugMode) {
                      print(value);
                    }
                  },
                  onChanged: (String value){
                    if (kDebugMode) {
                      print(value);
                    }
                  },
                  validator: (value)
                  {
                    if(value==null||value.isEmpty)
                      {
                        return 'Password must not be empty!';
                      }
                    return null;
                  },

                  decoration: const InputDecoration(
                    labelText: 'password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),

                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(
                  height: 20.0,
                ),


                Container(
                  width: double.infinity,
                  color:Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      if (kDebugMode) {
                        print(emailController.text);
                      }
                      if (kDebugMode) {
                        print(passwordController.text);
                      }
                    },

                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color:Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height:10.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Don\'t have an account? ',

                    ),
                    TextButton(
                      onPressed: (onNotification),
                      child: Text(
                        'Register Now',
                      ),
                    ),
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
void onNotification()
{
  if (kDebugMode) {
    print('notification clicked');
  }
}