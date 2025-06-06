import 'package:al_quran_fifty_seven_days/bloc/splash/splash_bloc.dart';
import 'package:al_quran_fifty_seven_days/bloc/splash/splash_event.dart';
import 'package:al_quran_fifty_seven_days/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc()..add(StartEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ayat Konika Book',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
