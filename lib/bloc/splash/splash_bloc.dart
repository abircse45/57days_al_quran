import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<StartEvent>(_onStartSplash);
  }

  Future<void> _onStartSplash(StartEvent event, Emitter<SplashState> emit) async {
    await Future.delayed(Duration(seconds: 3));
    emit(SplashFinished());
  }
}