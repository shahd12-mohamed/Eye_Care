import 'package:eye_care/screens/profile.dart';
import 'package:eye_care/screens/upload/upload.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils.dart';
import 'ShareEye.dart';
import 'EyeCubit.dart';
import 'about.dart';
import 'favourite.dart';
import 'login/cubit/EyeLoginCubit.dart';
import 'login/cubit/EyeLoginStates.dart';

class setting_user extends StatefulWidget {
  const setting_user({super.key});

  @override
  State<setting_user> createState() => _setting_userState();
}

class _setting_userState extends State<setting_user> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => EyeLoginCubit(),
      child: BlocConsumer<EyeLoginCubit, EyeLoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => upload())));
                  },
                ),
                title: Padding(
                  padding: const EdgeInsets.only(
                    left: 70,
                  ),
                  child: Text(
                    'Setting',
                    textAlign: TextAlign.right,
                    style: SafeGoogleFont(
                      'Literata',
                      fontSize: 22,
                      //fontWeight: FontWeight.w700,
                      //height: 1*ffem/fem,
                      //letterSpacing: -0.48*fem,
                      //color: Color(0xff074452),
                    ),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('images/user-05a.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.person),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Your Profile',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((context) => const profile())));
                                },
                              ))
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.language),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Language',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: PopupMenuButton(
                              child: const Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 30,
                              ),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => appointment1() )));
                                      },
                                      child: MyText(
                                          text: 'English',
                                          font: 15,
                                          c: const Color(0xff074452)),
                                    ),
                                  ],
                                )),
                                PopupMenuItem(
                                    child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Navigator.of(context).push(MaterialPageRoute(builder: ((context) => settingEye() )));
                                      },
                                      child: MyText(
                                          text: 'Arabic',
                                          font: 15,
                                          c: const Color(0xff074452)),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.favorite),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Favorite',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => const Favorite())));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20,
                              ))
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.lightbulb),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Dark Mode',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                EyeCubit.get(context).changeAppMode();
                              },
                              icon: Icon(
                                EyeCubit.get(context).isLight
                                    ? Icons.dark_mode
                                    : Icons.light_mode,
                                size: 20,
                              ))
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.info_outline),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'About',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => const about())));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20,
                              ))
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text('Logout App'),
                                          content:
                                              const Text('Are you want to logout?'),
                                          actions: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop(false);
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          const Color(0xff074552)),
                                                ),
                                                child: const Text('No')),
                                            ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          const Color(0xff074552)),
                                                ),
                                                onPressed: () async {
                                                  await FirebaseAuth.instance
                                                      .signOut();
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Yes')),
                                          ],
                                        );
                                      });
                                },
                                icon: const Icon(
                                  Icons.logout,
                                  size: 20,
                                ),
                              ),
                              Text(
                                'Logout',
                                style: SafeGoogleFont(
                                  'Literata',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  //height: 1.2*ffem/fem,
                                  //color: Color(0xffffffff),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
