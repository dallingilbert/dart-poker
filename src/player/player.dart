import '../card/card.dart';

class Player {
  double funds = 0.0;
  String name = '';
  List <Card> cards = [];
  bool isDealer = false;
  bool isSmallBlind = false;
  bool isBigBlind = false;

  Player(this.funds, this.name, this.cards);

  // Add winnings of the pot to player account
  void addFunds(double winnings) {
    funds += winnings;
  }
  
}