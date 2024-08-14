// write logical
import 'package:baskball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  var onClickA = 0;
  var onClickB = 0;

  /*
  teamA(int buttonNumber) {
   onClickA += buttonNumber;
   // بطلع state بخرج من cubit ده state
    emit(CounterAIncrementState());
  }
  teamB(int buttonNumber) {
    onClickB += buttonNumber;
  }
   */

  // emit = setState in stateFullWidget
  teamIncrement({required String team, required int buttonNumber}) {
    if (team == "A") {
      onClickA += buttonNumber;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      onClickB += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  resetPoint() {
    onClickA = 0;
    onClickB = 0;
    emit(CounterAIncrementState());
    emit(CounterBIncrementState());
  }
}


