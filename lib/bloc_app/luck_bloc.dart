import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'luck_event.dart';
import 'luck_state.dart';

class LuckBloc extends Bloc<LuckEvent, LuckState> {
  LuckBloc() : super(InitialLuckState()) {
    // Handling ChangeLuckEvent
    on<ChangeLuckEvent>((event, emit) {
      int newNumber = Random().nextInt(11);
      String newText = "Your new lucky number is $newNumber";
      emit(NewLuckState(newNumber, newText));
    });
  }
}
