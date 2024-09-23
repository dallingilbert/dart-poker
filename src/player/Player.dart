import '../card/Card.dart';

class Player {
  double funds;
  String name;
  List <Card>? cards;

  Player(this.funds, this.name) {
    funds = this.funds;
    name = this.name;
    cards = [];
  }

  // Add winnings of the pot to player account
  void addFunds(double winnings) {
    funds += winnings;
  }
  
}