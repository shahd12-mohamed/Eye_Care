import 'package:eye_care/screens/verification/verifacation.dart';
import 'package:flutter/material.dart';

import '../core/components/components.dart';
import '../core/utils.dart';


class forgetpasswordEye extends StatefulWidget {
  const forgetpasswordEye({super.key});

  @override
  State<forgetpasswordEye> createState() => _forgetpasswordEyeState();
}

class _forgetpasswordEyeState extends State<forgetpasswordEye> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  bool isChecked = false;

  bool ispasswordshow=true;
  bool ispasswordshow2=true;
  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();


  void validateAndSave(){
    final FormState? form = _formKey.currentState;
    if(form!.validate()){
      print('Form is vaild');
    }
    else{
      print('Form is invaild');
    }
  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Container(
              // signinf7C (6:245)
              // padding: EdgeInsets.fromLTRB(29*fem, 15*fem, 20*fem, 40*fem),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 0*fem, 9*fem),
                    width: 300,
                    height: 223,
                    child: Image.asset(
                      'images/duo-authentication-verification-code-message-for-secure-login-or-sign-in-on-laptop-screen-two-factor-verification-modern-flat-cartoon-style-illustration-on-white-background-vector-removebg-preview-1.png',
                      //width: 205*fem,
                      // height: 223*fem,
                    ),
                  ),
                  Container(
                    // welcomebackYs8 (6:445)
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Create New Password',
                      style: SafeGoogleFont (
                        'Literata',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        //height: 1.485*ffem/fem,
                        color: const Color(0xff34086b),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 330,
                      height: 50,
                      child: defaultFormField
                        (controller: passwordController,

                        type: TextInputType.visiblePassword,
                        label: 'Password',
                        prefix: Icons.lock_outline,
                        suffix: ispasswordshow ? Icons.visibility_off_sharp : Icons.visibility_sharp,
                        isPassword:ispasswordshow,
                        suffixpressed: (){
                          setState((){
                            ispasswordshow= !ispasswordshow;
                          });
                        },

                        validator: (value)
                        {
                          if(value.isEmpty)
                          {
                            return 'password must not be empty!';
                          }
                          return null;
                        },


                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 330,
                      height: 50,
                      child: defaultFormField
                        (controller: confirmController,

                        type: TextInputType.visiblePassword,
                        label: 'Confirm Password',
                        prefix: Icons.lock_outline,
                        suffix: ispasswordshow2 ? Icons.visibility_off_sharp : Icons.visibility_sharp,
                        isPassword:ispasswordshow2,
                        suffixpressed: (){
                          setState((){
                            ispasswordshow2= !ispasswordshow2;
                          });
                        },

                        validator: (value)
                        {
                          if(value.isEmpty)
                          {
                            return 'password must not be empty!';
                          }
                          if(value !=passwordController.text)
                          {
                            return 'password not match';
                          }
                          return null;
                        },


                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),

                      const Text('Remember Me',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: defaultButton(width: 350,height: 50, background: const Color(0xff074452),

                      text: 'Reset Password',
                      function: (){
                        if (_formKey.currentState!.validate()) {

                          print(confirmController.text);
                          print(passwordController.text);
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const verification() )));

                        }
                      },),
                  ),




                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}