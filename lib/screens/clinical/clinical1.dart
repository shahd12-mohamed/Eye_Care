import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/components/components.dart';
import '../../core/utils.dart';
import '../EyeCubit.dart';
import '../ShareEye.dart';
import '../upload/upload.dart';
import 'cubit/EyeClinicalCubit.dart';
import 'cubit/EyeClinicalStates.dart';

class ClinicalScreen extends StatefulWidget{

  const ClinicalScreen({super.key});

  @override
  State<ClinicalScreen> createState() => _ClinicalScreenState();
}

class _ClinicalScreenState extends State<ClinicalScreen> {
  TextEditingController SearchController = TextEditingController();

  final List Doctors = [
    'doctor1',
    'doctor2',
    'doctor3',
    'doctor4',
  ];

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
    create: (context) => EyeClinicalCubit(),
        child: BlocConsumer<EyeClinicalCubit,EyeClinicalStates>(
          listener: (context,state){},
          builder: (context,state){
            return Scaffold(
              appBar: AppBar(
                //backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: ((context) => upload()))); },
                    icon: const Icon(Icons.arrow_back_ios,)),
                //Icon(Icons.arrow_back_ios,color:Colors.grey,),
                title: Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                  ),
                  child: Text(
                    'Clinical',
                    //textAlign: TextAlign.left,
                    style: SafeGoogleFont (
                      'Literata',
                      fontSize: 22,
                      //fontWeight: FontWeight.w700,
                      //height: 1*ffem/fem,
                      //letterSpacing: -0.48*fem,
                      //color: Color(0xff074452),
                    ),
                  ),
                ),
                actions: [
                  IconButton(onPressed: (){}, icon: const Icon(
                    Icons.settings,
                    //color: Color(0xff074452),
                  ))
                ],
              ),
              body: ConditionalBuilder(
                 condition: EyeClinicalCubit.get(context).model !=null,
                builder: (context){

                   var model=EyeClinicalCubit.get(context).model;
                   return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         if(model!.isEmailVerified ==false)

                              const SizedBox(height: 20,),
                               defaultFormField(
                              label: 'Search',
                              prefix: Icons.search,
                              type: TextInputType.text,
                              validator: (value) {
                                if(value.isEmpty){
                                  return 'Search must not be empty!';
                                }
                                return null;
                              },
                              controller: SearchController,
                              onChanged: (value){
                                showSearch(context: context, delegate: CustomSearch());
                              }
                          ),


                          const SizedBox(height: 10,),


                          taskssBuilder(task:EyeCubit.get(context).newtasks )







                        ],

                      ),
                    ),
                  );
                },
                fallback: (context)=>const Center(child: CircularProgressIndicator()),
              ),
            );
          },

        ),

    );
  }
}
class CustomSearch extends SearchDelegate{
  @override
  List AllDoctors=[
    'Dr.Pawan',
    'Dr.Amira',
    'Dr.Ahmed',
    'Dr.Amany',
  ];

   List? filterList ;
  List<Widget>? buildActions(BuildContext context) {
    return [
    IconButton(onPressed: (){
      query = "";
    }, icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
 return IconButton(onPressed: (){
   close(context, null);
 }, icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {

   return const Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    if(query == ""){
      return ListView.builder(itemCount: AllDoctors.length,itemBuilder: (context,index){
        return InkWell(
          onTap: (){
            showResults(context);
          },
          child: Card(child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text("${AllDoctors[index]}",style: const TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),),
          )),
        );
      });
    }
    else{
      filterList = AllDoctors.where((element) => element.contains(query)).toList();
      return ListView.builder(itemCount: filterList!.length,itemBuilder: (context,index){
        return InkWell(
          onTap:(){
            showResults(context);
          },
          child: Card(child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text("${filterList![index]}",style: const TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),),
          )),
        );
      });
    }

  }

}