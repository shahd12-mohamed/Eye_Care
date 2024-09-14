import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils.dart';

Widget defaultButton({
  required double width,
  required double height,
  required Color background,
  bool isUpperCase = true,
  final Function()? function,
  required String text,
  double raduis = 10.0,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0x4c074452),
            offset: Offset(6, 5),
            blurRadius: 11,
          ),
        ],
        color: background,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: SafeGoogleFont(
            'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            //height: 20,
            color: const Color(0xffffffff),
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefix,
  //required  Function validate,
  IconData? suffix,
  bool isPassword = false,
  final String? Function(dynamic value)? onSubmit,
  final String? Function(dynamic value)? onChanged,
  required String? Function(dynamic value) validator,
  Function()? suffixpressed,
  final Function()? Ontap,
  //required String? Function(dynamic value) Ontap,
  bool isclicable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: onChanged,
      onTap: Ontap,
      validator: validator,
      onFieldSubmitted: onSubmit,
      enabled: isclicable,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 15,
          color: Color(0xffADA4A5),
        ),
        fillColor: const Color(0xffF7F8F8),
        prefixIcon: Icon(
          prefix,
          color: const Color(0xff074452),
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixpressed,
                icon: Icon(
                  suffix,
                  color: const Color(0xff074452),
                ),
              )
            : null,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
              //color: Colors.transparent,
              //width: 1,
              color: Colors.black,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    );

Widget buildArticleItem(article, context) => InkWell(
      onTap: () {
        //navigateTo(context, WebViewScreen(article['url']));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage('${article['urlToImage']}'),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 120,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${article['title']}',
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '${article['publishedAt']}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget MyDivider() => Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey[300],
    );


void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void pushAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false);

void ShowToast({
  required String text,
  required ToastStates state,
}) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0);
}

//enum
enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}


Widget mytext({
  required String text,
  required FontWeight font,
  required double siz,
  required Color col,
  required FontStyle fontS,
}) =>
    Text(
      text,
      style: TextStyle(
        color: col,
        fontWeight: font,
        fontSize: siz,
        fontStyle: fontS,
      ),
    );