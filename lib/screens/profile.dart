import 'dart:io';

import 'package:eye_care/screens/setting_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/utils.dart';
import 'EyeCubit.dart';
import 'EyeStates.dart';
import 'history.dart';

class profile extends StatelessWidget {
  const profile({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => EyeCubit(),
      child: BlocConsumer<EyeCubit, EyeStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => setting_user())));
                    },
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                    ),
                    child: Text(
                      'Your Profile',
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
                      BlocBuilder<EyeCubit, EyeStates>(
                        builder: (conrext, state) {
                          if (state is EyeInitialImageState) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Center(
                                        child: Stack(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 200,
                                          child: Image.asset(
                                              'images/user-05a.png'),
                                        ),
                                        Positioned(
                                          bottom: -8,
                                          left: 130,
                                          child: IconButton(
                                              onPressed: () {
                                                context
                                                    .read<EyeCubit>()
                                                    .pickedImage();
                                              },
                                              icon: const Icon(
                                                Icons.add_a_photo,
                                              )),
                                        )
                                      ],
                                    )),
                                  ),
                                ),
                              ),
                            );
                          } else if (state is EyeImageLoadingState) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                  child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: Image.file(File(state.imagePath))
                                          .image,
                                    )),
                              )),
                            );
                          } else if (state is EyeImageErrorState) {
                            return Center(
                              child: Column(
                                children: [
                                  Text(state.errorMessage),
                                  const SizedBox(
                                    height: 300,
                                    width: 200,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      context.read<EyeCubit>().reset();
                                    },
                                    child: const Text("Try Again"),
                                  )
                                ],
                              ),
                            );
                          }
                          return Container();
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'History',
                                textAlign: TextAlign.right,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((context) => const History())));
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
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
                          bottom: 10,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.person,
                            ),
                            Text(
                              'Hossam_Hassan226',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 5,
                          bottom: 10,
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.email),
                            Text(
                              'HH226@gmail.com',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 5,
                          bottom: 10,
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.phone),
                            Text(
                              '+201366784109',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
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
                            const Icon(Icons.calendar_month_outlined),
                            Text(
                              '25',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
