import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:point_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamEScore = 0;
  int teamBScore = 0;

  CounterCubit() : super(CounterAIncreamentState(0)); // Initial state

  void addPointsToTeamE(int points) {
    teamEScore += points;
    emit(CounterAIncreamentState(teamEScore)); // Emit new state with updated score
  }

  void addPointsToTeamB(int points) {
    teamBScore += points;
    emit(CounterBIncreamentState(teamBScore)); // Emit new state with updated score
  }

  void resetScores() {
    teamEScore = 0;
    teamBScore = 0;
    emit(CounterAIncreamentState(teamEScore)); // Emit reset state
  }
}
