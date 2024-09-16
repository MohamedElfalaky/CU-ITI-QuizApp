import 'package:cu_iti_quizapp/data/cubits/news_cubit/news_cubit.dart';
import 'package:cu_iti_quizapp/screens/news_screen_with_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.green)),
      home: BlocProvider(
          create: (BuildContext context) => NewsCubit(),
          child: NewsScreenWithCubit()),
    );
  }
}
