import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ksh/logic/cubit/increment_cubit.dart';
import 'package:ksh/pages/homepage.dart';


//main
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//materialapp
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //blocprovider is to provide root widget
    return BlocProvider(
      create: (context) => IncrementCubit(),
      child: MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false),
    );
  }
}
