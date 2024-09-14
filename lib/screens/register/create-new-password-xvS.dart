// ignore_for_file: avoid_print

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:eye_care/screens/clinical/clinical1.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/components/components.dart';
import '../../core/network/local/cache_helper.dart';
import '../../core/utils.dart';
import '../login/signinEyeCare.dart';
import '../upload/upload.dart';
import 'cubit/EyeRegisterCubit.dart';
import 'cubit/EyeRegisterState.dart';

enum UserType { doctor, patient }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  TextEditingController confirmController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController doctorController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateAndSave() {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      print('Form is vaild');
    } else {
      print('Form is invaild');
    }
  }

  // List<UserType> _userTypes = [
  List<UserType> _userTypes = UserType.values;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BlocProvider(
      create: (BuildContext context) => EyeRegisterCubit(),
      child: BlocConsumer<EyeRegisterCubit, EyeRegisterStates>(
        listener: (context, state) async {
          //if(state is EyeRegisterSuccessState ){
          // if(state.registerModel.status!){
          //print(state.registerModel.data!.token);
          //print(state.registerModel.message);

          // ShowToast(state: ToastStates.SUCCESS, text:state.registerModel.message!);
          //CacheHelper.saveData(key: 'token', value:state.registerModel.data!.token ).then((value) => {

          //pushAndFinish(context, clinical1()),
          //token= state.registerModel.data!.token,
          // });
          //}else{
          //print(state.registerModel.message);
          //ShowToast(state: ToastStates.ERROR, text:state.registerModel.message!);
          //}
          //}
          if (state is EyeCreateUserSuccessState) {
            // pushAndFinish(context, clinical1());
            //if( ==true){
            //EyeCubit.get(context).insertToDatabase(title: nameController.text, phone: phoneController.text);
            //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => upload() )));
            // pushAndFinish(context, upload());
            //}
            //else{
            //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => clinical1() )));
            //}
            // final userType = context.read<EyeRegisterCubit>().state;

            await CacheHelper.saveData(key: 'userType', value: state.userType)
                .then((value) => {
                      // if (state.userType== UserType.doctor) {
                      //   pushAndFinish(context, upload())
                      //} else if (state.userType == UserType.patient) {
                      //pushAndFinish(context, clinical1())
                      //}
                      if (EyeRegisterCubit.get(context).valueChoose ==
                          UserType.doctor)
                        {pushAndFinish(context, upload())}
                      else if (EyeRegisterCubit.get(context).valueChoose ==
                          UserType.patient)
                        {pushAndFinish(context, const ClinicalScreen())}
                    });
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Form(
              key: _formKey,
              child: Scaffold(
                appBar: AppBar(
                  title: Center(
                    child: Text(
                      'Create new Account',
                      style: SafeGoogleFont(
                        'Literata',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        //height: 1.485*ffem/fem,
                        color: const Color(0xff074452),
                      ),
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupdjejBJe (Y68H9QkVoNeX9ZAfLAdJeJ)
                            //margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20.6*fem, 18*fem),
                            width: double.infinity,
                            height: 140,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    //EyeCubit.get(context).isDoctor=true;
                                  },
                                  child: Container(
                                    child: Image.asset(
                                        'images/illustration-with-a-cartoon-doctor-banner-for-national-doctor-s-day-celebration-medicine-flat-design-for-social-media-poster-banner-vector-1.png'),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    //EyeCubit.get(context).isDoctor=false;
                                  },
                                  child: Image.asset(
                                      'images/tt-removebg-preview-1.png'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 330,
                              height: 50,
                              child: defaultFormField(
                                type: TextInputType.name,
                                prefix: Icons.person,
                                label: 'User Name',
                                controller: nameController,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'User Name must not be empty!';
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
                              child: defaultFormField(
                                  type: TextInputType.emailAddress,
                                  prefix: Icons.email_outlined,
                                  label: 'Email',
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'email must not be empty!';
                                    }
                                    return null;
                                  },
                                  controller: emailController),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 330,
                              height: 50,
                              child: defaultFormField(
                                type: TextInputType.phone,
                                prefix: Icons.phone,
                                label: 'Phone Number',
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Phone Number must not be empty!';
                                  }
                                  return null;
                                },
                                controller: phoneController,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 330,
                              height: 50,
                              child: defaultFormField(
                                controller: passwordController,
                                type: TextInputType.visiblePassword,
                                label: 'Password',
                                prefix: Icons.lock_outline,
                                suffix: EyeRegisterCubit.get(context).suffix,
                                isPassword: EyeRegisterCubit.get(context)
                                    .isPasswordShown,
                                suffixpressed: () {
                                  EyeRegisterCubit.get(context)
                                      .changPasswordVisibility();
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
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
                              child: defaultFormField(
                                controller: confirmController,
                                type: TextInputType.visiblePassword,
                                label: 'Confirm Password',
                                prefix: Icons.lock_outline,
                                suffix: EyeRegisterCubit.get(context).suffix2,
                                isPassword: EyeRegisterCubit.get(context)
                                    .isPasswordShown2,
                                suffixpressed: () {
                                  EyeRegisterCubit.get(context)
                                      .ChangPasswordVisibility2();
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'password must not be empty!';
                                  }
                                  if (value != passwordController.text) {
                                    return 'password not match';
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
                              child: defaultFormField(
                                  type: TextInputType.number,
                                  prefix: Icons.calendar_month,
                                  label: 'Age',
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Age must not be empty!';
                                    }
                                    return null;
                                  },
                                  controller: ageController),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: DropdownButton(
                                  hint: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Select user type'),
                                  ),
                                  dropdownColor: Colors.grey[100],
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 36,
                                  isExpanded: true,
                                  underline: const SizedBox(),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                  value:
                                      EyeRegisterCubit.get(context).valueChoose,
                                  items: UserType.values
                                      .map(
                                        (map) => DropdownMenuItem(
                                          value: map,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                map.toString().split('.').last),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (newValue) {
                                    EyeRegisterCubit.get(context)
                                        .isdoctor(newValue);
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x4c074452),
                                    offset: Offset(0 * fem, 10 * fem),
                                    blurRadius: 11 * fem,
                                  ),
                                ],
                              ),
                              child: ConditionalBuilder(
                                  condition: state is! EyeRegisterLoadingState,
                                  builder: (context) => defaultButton(
                                        width: 350,
                                        height: 50,
                                        background: const Color(0xff074452),
                                        text: 'Sign Up',
                                        function: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            EyeRegisterCubit.get(context)
                                                .userRegister(
                                              email: emailController.text,
                                              password: passwordController.text,
                                              name: nameController.text,
                                              phone: phoneController.text,
                                              age: ageController.text,
                                              confirmPassword:
                                                  confirmController.text,
                                              userType:
                                                  EyeRegisterCubit.get(context)
                                                      .valueChoose
                                                      .toString(),
                                            );

                                            print(emailController.text);
                                            print(passwordController.text);
                                            print(EyeRegisterCubit.get(context)
                                                .valueChoose
                                                .toString());

                                            //if(EyeCubit.get(context).isDoctor ==true){
                                            //EyeCubit.get(context).insertToDatabase(title: nameController.text, phone: phoneController.text);
                                            //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => upload() )));
                                            //pushAndFinish(context, upload()),
                                            //}
                                            //else{
                                            //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => clinical1() )));
                                            //pushAndFinish(context, clinical1()),
                                            //}
                                          }
                                        },
                                      ),
                                  fallback: (context) => const Center(
                                      child: CircularProgressIndicator())),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already Have an account?",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => SigninEye()));
                                  },
                                  child: mytext(
                                    text: "Sign In",
                                    siz: 16,
                                    col: const Color(0xff35C2C1),
                                    font: FontWeight.w600,
                                    fontS: FontStyle.normal,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
