import 'dart:math';

enum Suit { heart, diamond, spade, club }

class Card {
  Map<Suit, int> card;
  
  Card(this.card) {
    card = this.card;
  }

  Suit determineSuit(){
    // Determine a random suit
    
    var random = Random();
    var suit = random.nextInt(4);

    if (suit == 0) {
      return Suit.heart;
    } else if (suit == 1) {
      return Suit.diamond;
    } else if (suit == 2) {
      return Suit.spade;
    } else if (suit == 3) {
      return Suit.club;
    }

    throw 'Error! Suit cannot be null';
  }

  int drawCard() {
    var cardNumber = Random().nextInt(13);
    return cardNumber;
  }

}
