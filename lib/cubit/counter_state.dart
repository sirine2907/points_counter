abstract class CounterState {}

class CounterAIncreamentState extends CounterState {
  final int teamEScore;
  CounterAIncreamentState(this.teamEScore);
}

class CounterBIncreamentState extends CounterState {
  final int teamBScore;
  CounterBIncreamentState(this.teamBScore);
}
