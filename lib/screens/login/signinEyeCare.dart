
import 'package:eye_care/screens/clinical/clinical1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/components/components.dart';
import '../../core/network/local/cache_helper.dart';
import '../../core/utils.dart';
import '../EyeCubit.dart';

import '../register/create-new-password-xvS.dart';
import '../register/cubit/EyeRegisterCubit.dart';
import '../upload/upload.dart';
import '../verification/verifacation.dart';
import 'cubit/EyeLoginCubit.dart';
import 'cubit/EyeLoginStates.dart';


class SigninEye extends StatelessWidget {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

  SigninEye({super.key});



  void validateAndSave(){
    final FormState? form = _formKey.currentState;
    if(form!.validate()){
    }
    else{
    }
  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>  EyeRegisterCubit() ),
      ],
    child: BlocProvider(
      create: (BuildContext context  )=>EyeLoginCubit(),
      child: BlocConsumer<EyeLoginCubit,EyeLoginStates>(
        listener: (context,state) async {
          //
          if(state is EyeLoginErrorState){
            ShowToast(text: state.error, state: ToastStates.ERROR);
          }
      EyeLoginCubit.get(context).initstates();
          if (state is EyeLoginSuccessState) {
            try {
              await CacheHelper.saveData(key: 'uid', value: state.uid).then((value) async {

                final userTypeString = await CacheHelper.getData(key: 'userType');
                final userType = UserType.values.firstWhere((type) => type.toString() == userTypeString);
                if (userType == UserType.doctor) {
                  pushAndFinish(context, upload());
                } else if (userType == UserType.patient) {
                  pushAndFinish(context, const ClinicalScreen());
                } else {
                  // Handle unknown userType value
                }
              }).catchError((error) {
                // Handle any errors that occur during saving uid
              });
            } catch (error) {
              // Handle the error here
            }
          }










        },
        builder: (context,state){
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
                          width: 200,
                          height: 223,
                          child: Image.asset(
                            'images/illustration.png',
                            //width: 205*fem,
                            // height: 223*fem,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          // welcomebackYs8 (6:445)
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Text(
                            'Welcome back !!',
                            style: SafeGoogleFont (
                              'Literata',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              //height: 1.485*ffem/fem,
                              color: const Color(0xff34086b),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: defaultFormField(type: TextInputType.emailAddress,
                              prefix: Icons.email_outlined,
                              label: 'Email',
                              validator: (value)
                              {
                                if(value.isEmpty)
                                {
                                  return 'email must not be empty!';
                                }
                                return null;
                              },
                              controller: emailController),
                        ),

                        const SizedBox(
                          height:25.0,
                        ),

                        SizedBox(
                          width: 350,
                          height: 50,
                          child: defaultFormField
                            (controller: passwordController,

                            type: TextInputType.visiblePassword,
                            label: 'Password',
                            prefix: Icons.lock_outline,
                            suffix: EyeLoginCubit.get(context).isPasswordShown ? Icons.visibility_off_sharp : Icons.visibility_sharp,
                            isPassword:EyeLoginCubit.get(context).isPasswordShown,
                            suffixpressed: (){
                              EyeLoginCubit.get(context).changPasswordVisibility();
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
                        const SizedBox(height: 25,),
                        Row(
                          children: [
                            Checkbox(
                              value: EyeCubit.get(context).isChecked,
                              onChanged: (bool? value) {
                               EyeCubit.get(context).ChangeRememberMe();
                              },
                              checkColor: Colors.green,  // color of tick Mark
                              activeColor: Colors.grey[300],
                              side:
                              const BorderSide(width: 2, color: Colors.grey),
                            ),

                            const Text('Remember me',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),),
                            const Spacer(),
                            TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => verification() )));
                            }, child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                  color: Color(0xff6358DC),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                              ),
                            ))
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4c074452),
                                  offset: Offset(0*fem, 10*fem),
                                  blurRadius: 11*fem,
                                ),
                              ],
                            ),
                            child: defaultButton(width: 350,height: 50, background: const Color(0xff074452),

                              text: 'Login',
                              function: (){
                                if (_formKey.currentState!.validate()) {

                                 // Navigator.of(context).push(MaterialPageRoute(builder: ((context) => upload() )));
                                  EyeLoginCubit.get(context).userLogin(
                                      email: emailController.text,
                                      password: passwordController.text);
                                 // EyeLoginCubit.get(context).initstates();

                                }
                              },),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Divider(
                                thickness: 1,
                              )),
                              Text('OR',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),),
                              Expanded(child: Divider(thickness: 1,)),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/480px-Facebook_Logo_%282019%29.png"),
                              iconSize: 45,
                            ),
                            const SizedBox(width: 2,),
                            IconButton(onPressed:(){}, icon:  Image.network("https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png"),
                              iconSize: 50,
                            )

                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don’t have an account?",  style: TextStyle(
                              fontSize: 16, color:  Colors.grey, fontWeight: FontWeight.normal, fontStyle: FontStyle.normal,
                            ),),
                            TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                            },

                                child: mytext(text: "Sign UP", siz: 16, col: const Color(0xff35C2C1), font: FontWeight.w600, fontS: FontStyle.normal,)),



                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          );
        },
      ),
    ));
  }
}