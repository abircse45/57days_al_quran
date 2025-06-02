import 'package:al_quran_fifty_seven_days/bloc/splash/splash_bloc.dart';
import 'package:al_quran_fifty_seven_days/bloc/splash/splash_state.dart';
import 'package:al_quran_fifty_seven_days/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widget/splash_backgroud_widget.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (_, state) {
        if (state is SplashFinished) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => HomeScreen()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SplashBackgroundImage(
          imagePath: '$splash_image', fit: BoxFit.fill,
        ),
      ),
    );
  }
}
