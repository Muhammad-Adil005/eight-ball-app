import 'dart:math';

abstract class LuckState {
  final int luckyNumber;
  final String luckyText;

  LuckState(this.luckyNumber, this.luckyText);
}

class InitialLuckState extends LuckState {
  InitialLuckState()
      : super(Random().nextInt(11), "This Text will be Changed!");
}

class NewLuckState extends LuckState {
  NewLuckState(int luckyNumber, String luckyText)
      : super(luckyNumber, luckyText);
}
